class UsersOwnCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :user_id, :string, :default => 1
  end

  def self.down
    remove_column :characters, :user_id
  end
end
