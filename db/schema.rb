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

ActiveRecord::Schema.define(version: 20170804153821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "photos", force: :cascade do |t|
    t.string   "photo"
    t.text     "title"
    t.text     "description"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.date     "date"
    t.string   "tags"
    t.boolean  "commute",            default: false
    t.boolean  "cooked",             default: false
    t.boolean  "diningout",          default: false
    t.boolean  "exercise",           default: false
    t.boolean  "entertainment",      default: false
    t.boolean  "family",             default: false
    t.boolean  "friends",            default: false
    t.boolean  "outdoors",           default: false
    t.boolean  "sleptwell",          default: false
    t.boolean  "spiritual",          default: false
    t.boolean  "travel",             default: false
  end

end
