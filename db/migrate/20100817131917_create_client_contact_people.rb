class CreateClientContactPeople < ActiveRecord::Migration
  def self.up
    create_table :client_contact_people do |t|
      t.string :first_name,   :limit => 32,   :default => ""
      t.string :last_name,    :limit => 32,   :default => ""
      t.string :email,        :limit => 256,  :default => ""
      t.string :phone,        :limit => 32,   :default => ""
      t.integer :client_id

      t.timestamps
    end
  end

  def self.down
    drop_table :client_contact_people
  end
end
