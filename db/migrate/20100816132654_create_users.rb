class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :login_name
      t.string :first_name
      t.string :last_name
      t.string :email
      t.database_authenticatable :null => false
      t.rememberable
      t.trackable

      t.timestamps
    end
    add_index :users, :login_name,            :unique => true
  end

  def self.down
    drop_table :users
  end
end
