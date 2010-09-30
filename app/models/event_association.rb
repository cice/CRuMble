class EventAssociation < ActiveRecord::Base
  
  belongs_to :event
  belongs_to :associated_element, :polymorphic => true
  
end
