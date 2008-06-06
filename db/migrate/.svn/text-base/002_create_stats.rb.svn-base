class CreateStats < ActiveRecord::Migration
  def self.up
    add_column :characters, :stats_str, :integer, :default => 10
    add_column :characters, :stats_dex, :integer, :default => 10
    add_column :characters, :stats_con, :integer, :default => 10
    add_column :characters, :stats_int, :integer, :default => 10
    add_column :characters, :stats_wis, :integer, :default => 10
    add_column :characters, :stats_cha, :integer, :default => 10
  end

  def self.down
    remove_column :characters, :stats_str
    remove_column :characters, :stats_dex
    remove_column :characters, :stats_con
    remove_column :characters, :stats_int
    remove_column :characters, :stats_wis
    remove_column :characters, :stats_cha
  end
end
