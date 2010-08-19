class Note < ActiveRecord::Base
  belongs_to :noted, :polymorphic => true
  belongs_to :collaborator
end
