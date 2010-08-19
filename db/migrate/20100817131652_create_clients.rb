class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :name,       :limit => 64
      t.string :homepage,   :limit => 256

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
