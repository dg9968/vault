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

ActiveRecord::Schema.define(version: 20161217223754) do

  create_table "addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "line1"
    t.string   "line2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "addressable_type"
    t.integer  "addressable_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["addressable_type", "addressable_id"], name: "index_addresses_on_addressable_type_and_addressable_id", using: :btree
  end

  create_table "clients", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "born_on"
    t.text     "occupation",              limit: 65535
    t.string   "line1"
    t.string   "line2"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.integer  "primary_social"
    t.integer  "spouse_social"
    t.string   "spouse_name"
    t.datetime "spouse_born_on"
    t.string   "spouse_occupation"
    t.boolean  "you_dependent"
    t.boolean  "support"
    t.string   "dependent1_name"
    t.date     "dependent1_born_on"
    t.integer  "dependent1_social"
    t.string   "dependent1_relationship"
    t.integer  "dependent1_home"
    t.boolean  "dependent1_disabled"
    t.boolean  "dependent1_student"
    t.string   "dependent2_name"
    t.datetime "dependent2_born_on"
    t.integer  "dependent2_social"
    t.string   "dependent2_relationship"
    t.integer  "dependent2_home"
    t.boolean  "dependent2_disabled"
    t.boolean  "dependent2_student"
    t.string   "dependent3_name"
    t.date     "dependent3_born_on"
    t.integer  "dependent3_social"
    t.string   "dependent3_relationship"
    t.integer  "dependent3_home"
    t.boolean  "dependent3_disabled"
    t.boolean  "dependent3_student"
    t.string   "dependent4_name"
    t.date     "dependent4_born_on"
    t.integer  "dependent4_social"
    t.string   "dependent4_relationship"
    t.integer  "dependent4_home"
    t.boolean  "dependent4_disabled"
    t.boolean  "dependent4_student"
    t.string   "dependent5_name"
    t.date     "dependent5_born_on"
    t.integer  "dependent5_social"
    t.string   "dependent5_relationship"
    t.integer  "dependent5_home"
    t.boolean  "dependent5_disabled"
    t.boolean  "dependent5_student"
    t.boolean  "dependent1_support"
    t.boolean  "dependent2_support"
    t.boolean  "dependent3_support"
    t.boolean  "dependent4_support"
    t.boolean  "dependent5_support"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  create_table "microposts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "content",    limit: 65535
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "picture"
    t.index ["user_id"], name: "index_microposts_on_user_id", using: :btree
  end

  create_table "prospects", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.text     "message",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "relationships", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "follower_id"
    t.integer  "followed_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["followed_id"], name: "index_relationships_on_followed_id", using: :btree
    t.index ["follower_id", "followed_id"], name: "index_relationships_on_follower_id_and_followed_id", unique: true, using: :btree
    t.index ["follower_id"], name: "index_relationships_on_follower_id", using: :btree
  end

  create_table "taxpayers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "content",    limit: 65535
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "attachment"
    t.index ["user_id", "created_at"], name: "index_taxpayers_on_user_id_and_created_at", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
  end

  add_foreign_key "microposts", "users"
end
