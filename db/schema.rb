# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20161127023113) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "armament", force: :cascade do |t|
    t.integer "ship_id"
    t.integer "turrets"
    t.integer "caliber"
    t.integer "guns"
    t.index ["ship_id"], name: "index_armament_on_ship_id", using: :btree
  end

  create_table "armor", force: :cascade do |t|
    t.integer "ship_id"
    t.integer "belt"
    t.integer "deck"
    t.index ["ship_id"], name: "index_armor_on_ship_id", using: :btree
  end

  create_table "propulsion", force: :cascade do |t|
    t.integer "ship_id"
    t.text    "type"
    t.integer "max_speed"
    t.index ["ship_id"], name: "index_propulsion_on_ship_id", using: :btree
  end

  create_table "ships", force: :cascade do |t|
    t.text     "name"
    t.text     "nationality"
    t.text     "class"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
