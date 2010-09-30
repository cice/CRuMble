class AddPlaceHolderToEventAssociation < ActiveRecord::Migration
  def self.up
    add_column :event_associations, :place_holder, :string
  end

  def self.down
    remove_column :event_associations, :place_holder
  end
end
