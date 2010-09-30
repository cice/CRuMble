class EventMessage < ActiveRecord::Base
  
  validates_uniqueness_of :handle
  
end
