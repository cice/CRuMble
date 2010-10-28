class NotesController < ApplicationController
  inherit_resources
  
  def create
    
    
    # create!
    
    @note = Note.new(params[:note])
    @note.collaborator=current_user.collaborator
    
    if @note.save
      redirect_to @note
      Event.throw ({"NoteTaker" => current_user.collaborator, "Noted" => @note.noted},"NoteTaken")
    else
      render :action => 'new'
    end
      
    
    
    
    
  end
  
  
  
end
