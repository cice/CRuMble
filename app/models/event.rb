class Event < ActiveRecord::Base
  
  has_many :event_associations
  has_many :associated_elements, :through => :event_associations
  
  
end
