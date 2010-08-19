class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login_name, :limit => 32,   :null    => false
      t.string :first_name, :limit => 32,   :default => ""
      t.string :last_name,  :limit => 32,   :default => ""
      t.string :email,      :limit => 256,  :default => ""
      t.database_authenticatable :null => false
      t.rememberable
      t.trackable

      t.timestamps
    end
    add_index :users, :login_name, :unique => true
  end

  def self.down
    drop_table :users
  end
end
