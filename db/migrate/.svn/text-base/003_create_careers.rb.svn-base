class CreateCareers < ActiveRecord::Migration
  def self.up
    create_table :careers do |t|
      t.references :character
      t.string :name
      t.integer :level, :default => 1
      t.integer :hit_die, :default => 4
      t.integer :skills_per_level, :default => 0
      t.integer :base_save_reflex, :default => 0
      t.integer :base_save_will, :default => 0
      t.integer :base_save_fortitude, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :careers
  end
end
