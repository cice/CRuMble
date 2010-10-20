class EventsController < ApplicationController
  
  inherit_resources
  
  private
  def collection
    @events ||= Event.order("created_at DESC")
  end
  
end