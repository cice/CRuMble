class CreateContactPoints < ActiveRecord::Migration
  def self.up
    create_table :contact_points do |t|
      t.integer :project_id
      t.integer :collaborator_id

      t.timestamps
    end
  end

  def self.down
    drop_table :contact_points
  end
end
