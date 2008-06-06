class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |t|
      t.string :name
      t.string :race
      t.string :alignment
      t.text :description
      t.integer :hit_points, :default => 0
      t.integer :armor_bonus, :default => 0
      t.integer :deflection_bonus, :default => 0
      t.integer :natural_armor, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :characters
  end
end
