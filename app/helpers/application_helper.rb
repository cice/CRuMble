module ApplicationHelper
  
  def note_form(notidd)
    render :partial => 'shared/note_form', :locals => {:noted => notidd}
  end
  
  
end
