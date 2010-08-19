class CreateClientContactPeople < ActiveRecord::Migration
  def self.up
    create_table :client_contact_people do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :client_id

      t.timestamps
    end
  end

  def self.down
    drop_table :client_contact_people
  end
end
