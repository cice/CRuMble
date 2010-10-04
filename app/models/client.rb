class Client < ActiveRecord::Base
  has_many :contact_people, :dependent => :destroy
  has_many :projects,       :dependent => :nullify
  
  has_many :contact_points, :through => :contact_people
  
  validates_presence_of :name
  
  accepts_nested_attributes_for :contact_people
  
  has_many :notes, :as => :noted
  
  
  def to_name
    name
  end
  
end
