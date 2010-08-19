class Assignment < ActiveRecord::Base
  belongs_to :project
  belongs_to :collaborator
  
  has_many :notes, :as => :noted
end
