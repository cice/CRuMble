
module ActiveRecord::BaseAddon  
  def to_name
    to_s
  end
  
  def to_type
    self.class.name
  end
end