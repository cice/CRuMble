class CreateEventAssociations < ActiveRecord::Migration
  def self.up
    create_table :event_associations do |t|
      t.integer :event_id
      t.integer :associated_element_id
      t.string :associated_element_type

      t.timestamps
    end
  end

  def self.down
    drop_table :event_associations
  end
end
