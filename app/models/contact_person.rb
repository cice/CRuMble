class ContactPerson < ActiveRecord::Base
  belongs_to :client
  
  has_many :contact_points
  
  has_many :notes, :as => :noted
end
