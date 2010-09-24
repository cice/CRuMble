class CreatePersonalRelations < ActiveRecord::Migration
  def self.up
    create_table :personal_relations do |t|
      t.integer :person_id
      t.integer :related_person_id
      t.integer :relationship_type

      t.timestamps
    end
  end

  def self.down
    drop_table :personal_relations
  end
end
