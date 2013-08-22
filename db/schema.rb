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

ActiveRecord::Schema.define(:version => 20130822211016) do

  create_table "edu_points", :force => true do |t|
    t.integer  "education_id"
    t.text     "point_text"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "edu_points", ["education_id"], :name => "index_edu_points_on_education_id"

  create_table "educations", :force => true do |t|
    t.integer  "resume_id"
    t.string   "institution"
    t.string   "location"
    t.string   "time"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "educations", ["resume_id"], :name => "index_educations_on_resume_id"

  create_table "exp_points", :force => true do |t|
    t.integer  "experience_id"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "exp_points", ["experience_id"], :name => "index_exp_points_on_experience_id"

  create_table "experiences", :force => true do |t|
    t.integer  "resume_id"
    t.string   "title"
    t.string   "company"
    t.string   "location"
    t.string   "time"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "experiences", ["resume_id"], :name => "index_experiences_on_resume_id"

  create_table "projects", :force => true do |t|
    t.integer  "resume_id"
    t.string   "title"
    t.string   "subtitle"
    t.string   "link"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "projects", ["resume_id"], :name => "index_projects_on_resume_id"

  create_table "properties", :force => true do |t|
    t.integer  "project_id"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "properties", ["project_id"], :name => "index_properties_on_project_id"

  create_table "resumes", :force => true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "email"
    t.string   "link"
    t.string   "phone"
    t.string   "headline"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "resumes", ["user_id"], :name => "index_resumes_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "login"
    t.string   "password_digest"
    t.string   "fname"
    t.string   "lname"
    t.string   "email"
    t.string   "session_token"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "users", ["login"], :name => "index_users_on_login"
  add_index "users", ["session_token"], :name => "index_users_on_session_token"

end
