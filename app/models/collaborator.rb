class Collaborator < ActiveRecord::Base
  has_many :assignments
  has_many :projects, :through => :assignments
  belongs_to :user
end
