class ContactPoint < ActiveRecord::Base
  belongs_to :collaborator
  
  belongs_to :project
  
  belongs_to :contact_person
  
  has_many :notes, :as => :noted
  
  validates_presence_of :contact_date_time
  
end
