# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 11) do

  create_table "careers", :force => true do |t|
    t.integer  "character_id"
    t.string   "name"
    t.integer  "level",               :default => 1
    t.integer  "hit_die",             :default => 4
    t.integer  "skills_per_level",    :default => 0
    t.integer  "base_save_reflex",    :default => 0
    t.integer  "base_save_will",      :default => 0
    t.integer  "base_save_fortitude", :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "base_attack_bonus",   :default => 0
  end

  create_table "characters", :force => true do |t|
    t.string   "name"
    t.string   "race"
    t.string   "alignment"
    t.text     "description"
    t.integer  "hit_points",       :default => 0
    t.integer  "armor_bonus",      :default => 0
    t.integer  "deflection_bonus", :default => 0
    t.integer  "natural_armor",    :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stats_str",        :default => 10
    t.integer  "stats_dex",        :default => 10
    t.integer  "stats_con",        :default => 10
    t.integer  "stats_int",        :default => 10
    t.integer  "stats_wis",        :default => 10
    t.integer  "stats_cha",        :default => 10
    t.boolean  "spellcaster",      :default => false
    t.string   "user_id",          :default => "1"
  end

  create_table "feats", :force => true do |t|
    t.integer  "character_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.integer  "quantity",     :default => 1
    t.text     "description"
    t.float    "weight",       :default => 1.0
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", :force => true do |t|
    t.integer  "character_id"
    t.string   "name"
    t.integer  "rank"
    t.string   "base_stat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spells", :force => true do |t|
    t.string   "name"
    t.integer  "level"
    t.integer  "character_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "email"
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token"
    t.datetime "remember_token_expires_at"
  end

end
