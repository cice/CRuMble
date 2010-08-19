class CreateCollaborators < ActiveRecord::Migration
  def self.up
    create_table :collaborators do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :type
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :collaborators
  end
end
