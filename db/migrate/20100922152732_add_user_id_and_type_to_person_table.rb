class AddUserIdAndTypeToPersonTable < ActiveRecord::Migration
  def self.up
    add_column :people, :user_id, :integer
    add_column :people, :type, :string
  end

  def self.down
    remove_column :people, :type
    remove_column :people, :user_id
  end
end
