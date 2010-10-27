module EventsHelper
  
  def make_event_message(event_message_list)
   
    event_message_list.sum("") do |m|
      if m.is_a?(String)
        m
      else
        prop= m[:property]
        associated_element=m[:associated_element]
        
        text = case prop
        when "name"
          associated_element.try(:to_name) || ""
        when "type"
          associated_element.try(:to_type) || ""
        else
          associated_element.try(:to_s) || ""
        end
          
        
        
        link_to(text,m[:associated_element])
      end
    end.html_safe
  end
  
  
end
