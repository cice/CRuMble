class StickyNoteCell < Cell::Base
  
  def display
    @note = @opts[:note]
    
    render
  end
  
  
end
