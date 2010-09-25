class AddDateAndMinutesToContactPoint < ActiveRecord::Migration
  def self.up
    add_column :contact_points, :minutes, :text
    add_column :contact_points, :contact_date_time, :datetime
    
  end

  def self.down
    remove_column :contact_points, :contact_date_time
    remove_column :contact_points, :minutes
  end
end
