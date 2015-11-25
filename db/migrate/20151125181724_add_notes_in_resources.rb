class AddNotesInResources < ActiveRecord::Migration
  def up
  	add_column :resources, :note, :text
  end
  def down
  	remove_column :resources, :note
  end
end
