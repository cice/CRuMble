class PersonalRelationsController < ApplicationController
  inherit_resources
  
  belongs_to :person
  
  def create
    create! do |success, failure|
      success.html { redirect_to :action => :index }
    end
  end
end