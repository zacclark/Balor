class AddBaseattack < ActiveRecord::Migration
  def self.up
    add_column "careers", "base_attack_bonus", :integer, :default => 0
  end

  def self.down
    remove_column "careers", "base_attack_bonus"
  end
end
