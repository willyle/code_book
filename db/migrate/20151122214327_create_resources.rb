class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer :search_id
      t.integer :link_id

      t.timestamps null: false
    end
  end
end
