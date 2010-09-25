class ContactPerson < Person
  belongs_to :client
  
  has_many :contact_points
  
  has_many :notes, :as => :noted
  
  accepts_nested_attributes_for :contact_points
  
  def client_name_and_contact_person_first_and_last_name
    [client.try(:name), "#{first_name} #{last_name}"].compact * " / "
  end  
  
end
