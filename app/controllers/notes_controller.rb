class NotesController < ApplicationController
  respond_to :html, :json
  inherit_resources
  
  def create
    
    
    # create!
    
    @note = Note.new(params[:note])
    @note.collaborator=current_user.collaborator
    
    
    if @note.save
      
      note_attribs = @note.attributes.except("noted_id", "collaborator_id", "collaborator_type").merge({:noted => @note.noted.attributes, :collaborator => @note.collaborator.attributes, :collaborator_link => collaborator_path(@note.collaborator)})
            
      render :json => {:note => note_attribs}
      Event.throw ({"NoteTaker" => current_user.collaborator, "Noted" => @note.noted},"NoteTaken")
    else
      render :action => 'new'
    end
      
    
    
    
    
  end
  

  
  
end
