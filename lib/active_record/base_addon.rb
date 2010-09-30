
module ActiveRecord::BaseAddon  
  def to_name
    id
  end
  
  def to_type
    self.class.name
  end
end