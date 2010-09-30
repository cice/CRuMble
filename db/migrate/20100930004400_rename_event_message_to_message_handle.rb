class RenameEventMessageToMessageHandle < ActiveRecord::Migration
  def self.up
    rename_column :events, :message, :message_handle
  end

  def self.down
    rename_column :events, :message_handle, :message
  end
end
