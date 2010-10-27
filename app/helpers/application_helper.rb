module ApplicationHelper
  
  def note_form(noted = nil)
    render :partial => 'shared/note_form', :locals => {:noted => noted}
  end
  
  def note_link(noted = nil, descriptor = :name)
    render :partial => 'shared/note_link', :locals => {:noted => noted, :descriptor => descriptor}
  end
  
  def contact_person_path(contact_person)
    client_contact_person_path(contact_person.client, contact_person)
  end
  
  
end
