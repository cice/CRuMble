class ContactPointsController < ApplicationController
  inherit_resources
  
  def create
    create!
    Event.throw ({"Creator" => current_user.collaborator, "Client" => @contact_point.client},"ContactPointCreated")


  end
  
end
