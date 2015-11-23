class ModifyPasswordColInUsers < ActiveRecord::Migration
  def up
  	remove_column :users, :password
  	add_column :users, :password_hash, :string
  end

  def down
  	remove_column :users, :password_hash
  	add_column :users, :password, :string
  end

end
