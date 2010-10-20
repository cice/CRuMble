class CollaboratorsController < ApplicationController
  inherit_resources
  
  # private
  # def collection
  #   debugger
  #   @collaborators ||= (Collaborator.subclasses + [Collaborator]).sum([]) { |klass|
  #     klass.all
  #   }
  # end
  
  def create
    create!
    Event.throw({"Creator" => current_user.collaborator, "Created" => @collaborator},"CollaboratorCreated")
    
    
  end
  
  
end
