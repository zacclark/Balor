class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.integer :quantity, :default => 1
      t.text :description
      t.float :weight, :default => 1
      t.references :character

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
