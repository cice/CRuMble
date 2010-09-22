class RemoveCollaboratorsTable < ActiveRecord::Migration
  def self.up
    drop_table :collaborators
  end

  def self.down
    create_table "collaborators", :force => true do |t|
      t.string   "first_name", :limit => 32,  :default => ""
      t.string   "last_name",  :limit => 32,  :default => ""
      t.string   "email",      :limit => 256, :default => ""
      t.string   "phone",      :limit => 32,  :default => ""
      t.string   "type",       :limit => 32,  :default => "Collaborator"
      t.integer  "user_id"
      t.datetime "created_at"
      t.datetime "updated_at"
    end
    
  end
end
