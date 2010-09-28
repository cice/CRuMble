class RenameContactPeople < ActiveRecord::Migration
  def self.up
    rename_table :client_contact_people, :people
  end

  def self.down
    rename_table :people, :client_contact_people
  end
end
