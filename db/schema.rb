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

ActiveRecord::Schema.define(version: 20150420214338) do

  create_table "services", force: true do |t|
    t.string   "title_1"
    t.string   "description_1"
    t.string   "title_2"
    t.string   "description_2"
    t.string   "title_3"
    t.string   "description_3"
    t.string   "title_4"
    t.string   "description_4"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sliders", force: true do |t|
    t.string   "description_1"
    t.string   "description_2"
    t.string   "description_3"
    t.string   "description_4"
    t.string   "description_5"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "structures", force: true do |t|
    t.string   "left_title"
    t.string   "center_title"
    t.string   "center_description"
    t.string   "right_title"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
