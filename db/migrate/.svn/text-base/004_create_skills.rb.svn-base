class CreateSkills < ActiveRecord::Migration
  def self.up
    create_table :skills do |t|
      t.references :character
      t.string :name
      t.integer :rank
      t.string :base_stat

      t.timestamps
    end
  end

  def self.down
    drop_table :skills
  end
end
