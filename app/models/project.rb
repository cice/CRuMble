class Project < ActiveRecord::Base
  belongs_to :client
  
  has_many :assignments
  has_many :collaborators, :through => :assignments
  
  has_many :contact_points
  
  has_many :notes, :as => :noted
end
