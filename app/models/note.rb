class Note < ActiveRecord::Base
  belongs_to :noted, :polymorphic => true
  belongs_to :collaborator
  
  def to_name
    content.split(" ")[1..8].join(" ")+" ..."
  end
  
end
