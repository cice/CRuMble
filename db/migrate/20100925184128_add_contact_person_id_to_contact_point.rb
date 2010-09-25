class AddContactPersonIdToContactPoint < ActiveRecord::Migration
  def self.up
    add_column :contact_points, :contact_person_id, :integer
  end

  def self.down
    remove_column :contact_points, :contact_person_id
  end
end
