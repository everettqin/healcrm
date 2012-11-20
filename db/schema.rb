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

ActiveRecord::Schema.define(:version => 20130108134521) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "customer_buy_records", :force => true do |t|
    t.integer  "customer_id"
    t.string   "no"
    t.string   "sn"
    t.string   "name"
    t.integer  "amount"
    t.integer  "price"
    t.integer  "totalPrice"
    t.string   "mark"
    t.date     "buyDate"
    t.string   "servicePeople"
    t.string   "out_of_warehouse_no"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "customer_complaints", :force => true do |t|
    t.integer  "customer_id"
    t.date     "complaintsDate"
    t.string   "subject"
    t.string   "receptioner"
    t.string   "processMethod"
    t.date     "processCompleteDate"
    t.string   "processer"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "customer_diseases", :force => true do |t|
    t.integer  "customer_id"
    t.string   "hospitalName"
    t.string   "department"
    t.string   "doctorName"
    t.date     "diagnosis_time"
    t.string   "scheme"
    t.string   "name"
    t.string   "height"
    t.string   "weight"
    t.string   "bmi"
    t.string   "activity_ability"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "customer_maintenances", :force => true do |t|
    t.integer  "customer_id"
    t.date     "action_time"
    t.string   "serverPeople"
    t.string   "category"
    t.string   "source"
    t.string   "model"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "customer_products", :force => true do |t|
    t.integer  "customer_id"
    t.string   "name"
    t.string   "sn"
    t.string   "no"
    t.date     "buyTime"
    t.string   "salesAgency"
    t.string   "sales"
    t.integer  "isSeeCustomer"
    t.string   "guidance"
    t.string   "outboundNumber"
    t.string   "user"
    t.string   "price"
    t.date     "expiryDate"
    t.integer  "state"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "customer_services", :force => true do |t|
    t.integer  "customer_id"
    t.string   "service_reception_personnel"
    t.string   "model"
    t.string   "sn"
    t.integer  "isInExpireDate"
    t.date     "repairDate"
    t.string   "repairAddress"
    t.string   "repairMan"
    t.integer  "isReturnFactory"
    t.string   "faultKind"
    t.string   "faultReason"
    t.string   "faultMark"
    t.date     "repairCompleteDate"
    t.date     "repairToCustomerDate"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "customer_suggests", :force => true do |t|
    t.integer  "customer_id"
    t.date     "suggestDate"
    t.string   "content"
    t.string   "receptioner"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.integer  "gender"
    t.string   "telephone"
    t.string   "zip"
    t.date     "birthday"
    t.integer  "age"
    t.string   "email"
    t.string   "address"
    t.string   "province",                :default => ""
    t.string   "city",                    :default => ""
    t.string   "country",                 :default => ""
    t.integer  "level"
    t.integer  "is_recommend",            :default => 0
    t.string   "recommend_customer_name", :default => ""
    t.string   "model"
    t.string   "sn"
    t.integer  "disease_id"
    t.date     "buy_date"
    t.integer  "category"
    t.string   "source"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 5
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_rails_admin_histories"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "hash_password"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

end
