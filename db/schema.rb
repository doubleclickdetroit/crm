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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130424215219) do

  create_table "cases", :force => true do |t|
    t.string   "name"
    t.boolean  "public",     :default => true
    t.boolean  "active",     :default => true
    t.integer  "company_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  add_index "cases", ["company_id"], :name => "index_cases_on_company_id"

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.string   "address"
    t.text     "background"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "title"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
    t.string   "address"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "company_id"
  end

  add_index "contacts", ["company_id"], :name => "index_contacts_on_company_id"

  create_table "notes", :force => true do |t|
    t.text     "body"
    t.integer  "case_id"
    t.integer  "user_id"
    t.integer  "deal_id"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
    t.datetime "occurance",  :default => '2013-04-24 04:00:00', :null => false
    t.integer  "company_id"
    t.integer  "contact_id"
  end

  add_index "notes", ["case_id"], :name => "index_notes_on_case_id"
  add_index "notes", ["company_id"], :name => "index_notes_on_company_id"
  add_index "notes", ["contact_id"], :name => "index_notes_on_contact_id"

end
