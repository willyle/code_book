class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :email
      t.string :fname
      t.string :lname
      t.date :birthday
      t.string :work
      t.integer :exp_level
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
