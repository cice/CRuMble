class Event < ActiveRecord::Base
  
  has_many :event_associations
  has_many :associated_elements, :through => :event_associations
  
  
  def self.throw(associated_elements, message_handle)
    evt = Event.new
    
    evt.message_handle= message_handle
    
    evt.save!
    
    
    
    associated_elements.each_pair do |place_holder, element|
      
      EventAssociation.new.tap do |e|
        e.associated_element = element
        e.place_holder = place_holder
        
        e.event = evt
        
        e.save!
        
      end
    end
  
    return evt
  end
  
  def self.render_message( associated_elements, message_handle)

     
     raw_msg = EventMessage.where({:handle => message_handle}).first
     
     raw_msg = KuduParser::ContentSnippet.extract raw_msg.content
     
     raw_msg.sum("") do |cs|
       
       if cs.is_a?(KuduParser::ContentSnippet)
         name=cs.name
         prop=cs.state
         
         associated_element=associated_elements[name.to_s]
         
         case prop.to_s.downcase
         
         when "name"
           associated_element.try(:to_name) || ""
         when "type"
           associated_element.try(:to_type) || ""
         else
           cs
           

         end 
         
       else
         cs
       end
     end
     
  end
  
  
  def get_associations
    
    associations={}
    
    self.event_associations.each do |ea|
      associations[ea.place_holder] = ea.associated_element
    end
    
    associations
    
    
  end
  
  
  
end
