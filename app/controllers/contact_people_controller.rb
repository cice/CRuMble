class ContactPeopleController < ApplicationController
  inherit_resources
  belongs_to :client
  
  
  def create
    create!
    Event.throw({"Creator" => current_user.collaborator, "Created" => @contact_person},"ContactPersonCreated")
    
    
  end
  
end
