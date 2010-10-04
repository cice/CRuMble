module KuduParser
  class ContentSnippet
    cattr_accessor :name_pattern, :state_pattern, :opt_pattern, :snippet_pattern
    attr_accessor :opts
    attr_reader :name, :state
  
    def name= name
      @name = name.to_sym
    end
  
    def state= state
      @state = state.to_sym
    end
  
    # Regular expressions used to parse the content snippets
    self.name_pattern = '([a-zA-Z0-9_]+)'
    self.state_pattern = self.name_pattern
    self.opt_pattern = '[a-zA-Z0-9_]+=[a-zA-Z0-9_\-\/\.\;]+'
    self.snippet_pattern = /\[#{self.name_pattern}:
                              #{self.state_pattern}\s?
                              (#{self.opt_pattern})?
                              ((?:,#{self.opt_pattern})*)
                            \]/mx
  


    def initialize name, state, opts = {}
      self.name, self.state, self.opts = name.to_sym, state.to_sym, opts
    end  
  
    def cell_array
      [@name, @state, @opts]
    end
    
    class << self
      
      # Parses +content+ for content snippets, extracts them
      # and returns an array of plain text parts and ContentSnippet
      # objects.
      def extract content
        content_parts = []
    
        while match = snippet_pattern.match(content) do
          content_parts << match.pre_match 
          content_parts << extract_content_snippet_from_match(*match.to_a) 
          content = match.post_match
        end
    
        content_parts << content
      end

      protected
  
      # If arguments.length is 2 or 3, return arguments and hashed parameters.
      # Returns empty string if arguments.length is less or more than 2 or 3
      def extract_content_snippet_from_match full_match, name, state, *opts
    
        opts.reject! &:blank?
    
        # render_cell call via [] snippet must at least contain cell name and state,
        # may include parameters in form of 'par1=val1,par2=val2'
        return "" if name.blank? || state.blank?

        content_snippet = self.new name, state
    
        option_strings = []

        opts.each do |opt|
          option_strings += opt.split(",")
        end

        option_strings.each do |option_string|
          key, value = option_string.split("=")
          unless key.blank? || value.blank?
            value = split_array_value(value)
            value = value.first if value.length == 1
            content_snippet.opts[key.strip.to_sym] = value
          end
        end
    
        content_snippet
      end  
  
      def split_array_value array_value
        array_value.strip.split ";"
      end
    end
  end
end