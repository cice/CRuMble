class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string    :title,     :limit => 64, :default => ""
      t.integer   :client_id

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
