class CreateCollaborators < ActiveRecord::Migration
  def self.up
    create_table :collaborators do |t|
      t.string   :first_name, :limit => 32,   :default => ""
      t.string   :last_name,  :limit => 32,   :default => ""
      t.string   :email,      :limit => 256,  :default => ""
      t.string   :phone,      :limit => 32,   :default => ""
      t.string   :type,       :limit => 32,   :default => "Collaborator"
      t.integer  :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :collaborators
  end
end
