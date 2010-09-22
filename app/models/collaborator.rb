class Collaborator < Person
  has_many :assignments
  has_many :projects, :through => :assignments
  belongs_to :user
  
  attr_protected :user_id
end
