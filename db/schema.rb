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

ActiveRecord::Schema.define(version: 20150512150343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "articles", force: :cascade do |t|
    t.string   "title"
    t.text     "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "articles", ["title"], name: "index_articles_on_title", using: :btree

  create_table "blocks", force: :cascade do |t|
    t.string   "block_type"
    t.integer  "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "blocks", ["block_type"], name: "index_blocks_on_block_type", using: :btree

  create_table "pages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "pages", ["name"], name: "index_pages_on_name", using: :btree

  create_table "widgets", force: :cascade do |t|
    t.string   "name"
    t.hstore   "options"
    t.integer  "block_id"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "widgets", ["options"], name: "index_widgets_on_options", using: :gin

  add_foreign_key "blocks", "pages"
  add_foreign_key "widgets", "blocks"
end
