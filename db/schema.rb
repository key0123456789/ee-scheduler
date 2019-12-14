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

ActiveRecord::Schema.define(version: 2019_12_14_022247) do

  create_table "choises", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "college", null: false
    t.string "fuculty"
    t.string "department"
    t.integer "condition", null: false
  end

  create_table "test_methods", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "test_name"
    t.bigint "choise_id"
    t.index ["choise_id"], name: "index_test_methods_on_choise_id"
  end

  create_table "wishes", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "start_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "method_id"
    t.index ["method_id"], name: "index_wishes_on_method_id"
  end

  add_foreign_key "test_methods", "choises"
  add_foreign_key "wishes", "test_methods", column: "method_id"
end
