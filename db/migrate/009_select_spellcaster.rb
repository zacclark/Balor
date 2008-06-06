class SelectSpellcaster < ActiveRecord::Migration
  def self.up
    add_column :characters, :spellcaster, :boolean, :default => false
  end

  def self.down
    remove_column :characters, :spellcaster
  end
end
