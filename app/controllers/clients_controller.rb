class ClientsController < ApplicationController
  inherit_resources
  
#  before_filter :debugger


  def create
    create!
    Event.throw ({"Creator" => current_user.collaborator, "Created" => @client},"ClientCreated")
  
    Event.throw ({"Creator" => current_user.collaborator, "Created" => @client.contact_people.first}, "ContactPersonCreated") unless @client.contact_people.first.blank? 
    Event.throw ({"Creator" => current_user.collaborator, "Client" => @client}, "ContactPointCreated") unless @client.contact_people.first.blank?

  end
  
  
  def notes
    
    @client = Client.find(params[:id])
    
    respond_with(@client)
    
  end
    

end
