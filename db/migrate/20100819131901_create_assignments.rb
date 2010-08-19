class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :project_assignments do |t|
      t.integer :project_id
      t.integer :collaborator_id

      t.timestamps
    end
  end

  def self.down
    drop_table :project_assignments
  end
end
