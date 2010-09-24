class PersonalRelation < ActiveRecord::Base
  belongs_to :person
  belongs_to :related_person, :class_name => "Person"
  
  belongs_to :relation_type
end
