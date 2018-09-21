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

ActiveRecord::Schema.define(version: 2018_09_21_112321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chip_changes", force: :cascade do |t|
    t.integer "player_id"
    t.integer "ring_game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chips", force: :cascade do |t|
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_owners", force: :cascade do |t|
    t.integer "home_id"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_players", force: :cascade do |t|
    t.integer "home_id"
    t.integer "player_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "home_ring_games", force: :cascade do |t|
    t.integer "home_id"
    t.integer "ring_game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "homes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "player_chips", force: :cascade do |t|
    t.integer "player_id"
    t.integer "chip_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ring_game_players", force: :cascade do |t|
    t.bigint "player_id_id"
    t.bigint "ring_game_id_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id_id"], name: "index_ring_game_players_on_player_id_id"
    t.index ["ring_game_id_id"], name: "index_ring_game_players_on_ring_game_id_id"
  end

  create_table "ring_games", force: :cascade do |t|
    t.integer "number_of_times"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "blind"
    t.integer "starting_stack"
  end

end
