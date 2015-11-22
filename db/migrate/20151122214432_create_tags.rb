class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.integer :search_id
      t.integer :language_id

      t.timestamps null: false
    end
  end
end
