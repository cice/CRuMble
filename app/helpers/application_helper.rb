module ApplicationHelper
  
  def note_form(noted = nil)
    render :partial => 'shared/note_form', :locals => {:noted => noted}
  end
  
  def note_link(noted = nil, descriptor = :name)
    render :partial => 'shared/note_link', :locals => {:noted => noted, :descriptor => descriptor}
  end
  
  def throw_event(associated_elements, message_handle)
    evt = Event.new
    
    evt.save!
    
    associated_elements.each_pair do |place_holder, element|
      
      EventAssociation.new.tap do |e|
        e.associated_element = element
        e.place_holder = place_holder
        
        e.event=evt
        
        e.save!
        
      end
      
      
      
    end
  
  end
  
end
