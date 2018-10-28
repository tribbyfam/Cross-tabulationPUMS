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

ActiveRecord::Schema.define(version: 2018_10_28_001050) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dcp_pumas", force: :cascade do |t|
    t.string "year"
    t.string "code"
    t.string "name"
    t.string "boro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pums", force: :cascade do |t|
    t.string "state_puma"
    t.string "borough"
    t.string "agegroupsd"
    t.string "agegroups"
    t.string "age65plus"
    t.string "age18"
    t.string "mutu"
    t.string "mutud"
    t.string "educd_recode"
    t.string "educd_college"
    t.string "engability"
    t.string "lanx"
    t.string "nativity"
    t.string "povertylevel"
    t.string "disabilityagegroups"
    t.string "classwkr_dcp"
    t.integer "id_dcp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
