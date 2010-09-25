class Project < ActiveRecord::Base
  belongs_to :client
  
  has_many :assignments
  has_many :collaborators, :through => :assignments
  
  has_many :contact_points
  
  has_many :notes, :as => :noted
  
  validates_presence_of :title
  validates_associated :client
  validates_presence_of :client
  
  def client_name_slash_project_name
    [client.try(:name), title].compact * " / "
  end
end
