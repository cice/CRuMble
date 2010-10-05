class Person < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  
  has_many :personal_relations
  has_many :related_people, :through => :personal_relations
  
  has_many :notes, :as => :noted
  
  def first_and_last_name
    "#{first_name} #{last_name}"
  end
  
  
  def to_name
    first_and_last_name
  end
  
end

require 'collaborator'
require 'developer'
require 'contact_person'