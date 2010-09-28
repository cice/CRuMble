class RenameRelationshipTypeToRelationTypeId < ActiveRecord::Migration
  def self.up
    rename_column :personal_relations, :relationship_type, :relation_type_id
  end

  def self.down
    rename_column :personal_relations, :relation_type_id, :relationship_type
  end
end
