class CreateEventMessages < ActiveRecord::Migration
  def self.up
    create_table :event_messages do |t|
      t.string :handle
      t.string :content

      t.timestamps
    end
  end

  def self.down
    drop_table :event_messages
  end
end
