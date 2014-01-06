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

ActiveRecord::Schema.define(version: 20140105013344) do

  create_table "broadsheet_assets", force: true do |t|
    t.string   "name"
    t.string   "uuid"
    t.string   "asset_type"
    t.string   "file"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "broadsheet_authors", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "broadsheet_authors_broadsheet_posts", force: true do |t|
    t.integer  "broadsheet_post_id"
    t.integer  "broadsheet_author_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "broadsheet_categories", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "broadsheet_categories_broadsheet_posts", force: true do |t|
    t.integer  "broadsheet_category_id"
    t.integer  "broadsheet_post_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "broadsheet_layouts", force: true do |t|
    t.string   "name"
    t.text     "markup"
    t.string   "format"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "broadsheet_layoutss_broadsheet_stylesheets", force: true do |t|
    t.integer  "broadsheet_stylesheet_id"
    t.integer  "broadsheet_layout_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "broadsheet_partials", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "markup"
    t.string   "format"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "broadsheet_posts", force: true do |t|
    t.string   "title"
    t.string   "slug"
    t.datetime "publish_at"
    t.text     "body"
    t.string   "format"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "broadsheet_posts_broadsheet_tags", force: true do |t|
    t.integer  "broadsheet_post_id"
    t.integer  "broadsheet_tag_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "broadsheet_stylesheets", force: true do |t|
    t.string   "name"
    t.text     "styles"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "broadsheet_tags", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "broadsheet_views", force: true do |t|
    t.string   "name"
    t.string   "slug"
    t.string   "url"
    t.text     "markup"
    t.integer  "layout_id"
    t.string   "format"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "broadsheet_views", ["url"], name: "index_broadsheet_views_on_url", unique: true

end
