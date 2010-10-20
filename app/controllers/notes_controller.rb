class NotesController < ApplicationController
  inherit_resources
  
  def create
    create!
    Event.throw ({"NoteTaker" => current_user.collaborator, "Noted" => @note.noted},"NoteTaken")
    
    
  end
  
  
  
end
