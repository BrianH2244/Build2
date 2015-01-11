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

ActiveRecord::Schema.define(:version => 2012041712524413) do

  create_table "expansions", :force => true do |t|
    t.string   "expanding"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "expansions", ["user_id", "created_at"], :name => "index_expansions_on_user_id_and_created_at"

  create_table "friendly_id_slugs", :force => true do |t|
    t.string   "slug",                         :null => false
    t.integer  "sluggable_id",                 :null => false
    t.string   "sluggable_type", :limit => 40
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type"], :name => "index_friendly_id_slugs_on_slug_and_sluggable_type", :unique => true
  add_index "friendly_id_slugs", ["sluggable_id"], :name => "index_friendly_id_slugs_on_sluggable_id"
  add_index "friendly_id_slugs", ["sluggable_type"], :name => "index_friendly_id_slugs_on_sluggable_type"

  create_table "funs", :force => true do |t|
    t.string   "funnest"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "funs", ["user_id", "created_at"], :name => "index_funs_on_user_id_and_created_at"

  create_table "gratefuls", :force => true do |t|
    t.string   "gratitude"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "gratefuls", ["user_id", "created_at"], :name => "index_gratefuls_on_user_id_and_created_at"

  create_table "habits", :force => true do |t|
    t.string   "habitual"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "habits", ["user_id", "created_at"], :name => "index_habits_on_user_id_and_created_at"

  create_table "improvements", :force => true do |t|
    t.string   "improving"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "improvements", ["user_id", "created_at"], :name => "index_improvements_on_user_id_and_created_at"

  create_table "journals", :force => true do |t|
    t.text     "event"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "journals", ["user_id", "created_at"], :name => "index_journals_on_user_id_and_created_at"

  create_table "mostimportants", :force => true do |t|
    t.string   "mostimportantly"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "mostimportants", ["user_id", "created_at"], :name => "index_mostimportants_on_user_id_and_created_at"

  create_table "needs", :force => true do |t|
    t.string   "needing"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "needs", ["user_id", "created_at"], :name => "index_needs_on_user_id_and_created_at"

  create_table "procrastinate1s", :force => true do |t|
    t.string   "procrastination1"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "procrastinate1s", ["user_id", "created_at"], :name => "index_procrastinate1s_on_user_id_and_created_at"

  create_table "procrastinate2s", :force => true do |t|
    t.string   "procrastination2"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "procrastinate2s", ["user_id", "created_at"], :name => "index_procrastinate2s_on_user_id_and_created_at"

  create_table "procrastinate3s", :force => true do |t|
    t.string   "procrastination3"
    t.integer  "user_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "procrastinate3s", ["user_id", "created_at"], :name => "index_procrastinate3s_on_user_id_and_created_at"

  create_table "procrastinates", :force => true do |t|
    t.string   "procrastination"
    t.integer  "user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "procrastinates", ["user_id", "created_at"], :name => "index_procrastinates_on_user_id_and_created_at"

  create_table "projects", :force => true do |t|
    t.text     "goal"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "projects", ["user_id", "created_at"], :name => "index_projects_on_user_id_and_created_at"

  create_table "quotes", :force => true do |t|
    t.string   "quotation"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "quotes", ["user_id", "created_at"], :name => "index_quotes_on_user_id_and_created_at"

  create_table "savors", :force => true do |t|
    t.string   "savoring"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "savors", ["user_id", "created_at"], :name => "index_savors_on_user_id_and_created_at"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",        :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "authentication_token"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.string   "name"
    t.boolean  "admin",                  :default => false
    t.string   "slug"
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  add_index "users", ["slug"], :name => "index_users_on_slug"
  add_index "users", ["unlock_token"], :name => "index_users_on_unlock_token", :unique => true

  create_table "weeks", :force => true do |t|
    t.text     "mit"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "weeks", ["user_id", "created_at"], :name => "index_weeks_on_user_id_and_created_at"

end
