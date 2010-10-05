class NotesController < ApplicationController
  inherit_resources
  
  def create
    @note=Note.new(params[:note])
    
    
    if @note.save
      debugger
      Event.throw ({"NoteTaker" => current_user.collaborator, "Noted" => @note.noted},"NoteTaken")
      redirect_to @note
    else
      render :action => "new"
    end
  end
  
end
