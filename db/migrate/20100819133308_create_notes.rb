class CreateNotes < ActiveRecord::Migration
  def self.up
    create_table :notes do |t|
      t.integer     :noted_id
      t.string      :noted_type,      :limit => 32
      t.text        :content,         :default => "", :null => false
      t.string      :content_type,    :limit => 32,   :default => "plain"
      t.integer     :collaborator_id
      t.timestamps
    end
  end

  def self.down
    drop_table :notes
  end
end
