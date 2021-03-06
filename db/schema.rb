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

ActiveRecord::Schema.define(version: 20151229113143) do

  create_table "comments", force: :cascade do |t|
    t.string   "email_source"
    t.string   "email_target"
    t.integer  "disc_id"
    t.string   "description"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "comments", ["disc_id"], name: "index_comments_on_disc_id", using: :btree

  create_table "discs", force: :cascade do |t|
    t.string   "name",                limit: 100,                          null: false
    t.integer  "year",                                                     null: false
    t.decimal  "price",                           precision: 10, scale: 2, null: false
    t.integer  "state",                                                    null: false
    t.text     "description",                                              null: false
    t.datetime "created_at",                                               null: false
    t.datetime "updated_at",                                               null: false
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "address"
  end

  add_foreign_key "comments", "discs"
end
