class CollaboratorsController < ApplicationController
  inherit_resources
  
  # private
  # def collection
  #   debugger
  #   @collaborators ||= (Collaborator.subclasses + [Collaborator]).sum([]) { |klass|
  #     klass.all
  #   }
  # end
end
