# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150122214026) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.text     "ingredients"
    t.text     "instructions"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recipes_star_ratings", force: :cascade do |t|
    t.integer "recipe_id"
    t.integer "star_rating_id"
  end

  add_index "recipes_star_ratings", ["recipe_id"], name: "index_recipes_star_ratings_on_recipe_id", using: :btree
  add_index "recipes_star_ratings", ["star_rating_id"], name: "index_recipes_star_ratings_on_star_rating_id", using: :btree

  create_table "recipes_tags", force: :cascade do |t|
    t.integer "tag_id"
    t.integer "recipe_id"
  end

  add_index "recipes_tags", ["tag_id"], name: "index_recipes_tags_on_tag_id", using: :btree

  create_table "star_ratings", force: :cascade do |t|
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
