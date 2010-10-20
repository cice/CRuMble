class PeopleController < ApplicationController
  inherit_resources
  
  def relations
  
    @person=Person.find(params[:id])
    
    respond_with @person
    
  end
  
  
end
