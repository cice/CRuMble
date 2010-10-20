class DevelopersController < ApplicationController
  inherit_resources
  
  
  def create
    create!
    Event.throw({"Creator" => current_user.collaborator, "Created" => @developer},"DeveloperCreated")
    
    
  end
  
  
end