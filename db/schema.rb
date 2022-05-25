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

ActiveRecord::Schema.define(version: 20220430221223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "additional_question_answers", force: :cascade do |t|
    t.text     "answer_text"
    t.integer  "answer_boolean"
    t.integer  "survey_id"
    t.integer  "additional_question_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "additional_question_option_id"
  end

  add_index "additional_question_answers", ["additional_question_id"], name: "index_additional_question_answers_on_additional_question_id", using: :btree
  add_index "additional_question_answers", ["survey_id"], name: "index_additional_question_answers_on_survey_id", using: :btree

  create_table "additional_question_options", force: :cascade do |t|
    t.string   "option"
    t.boolean  "right_answer"
    t.integer  "additional_question_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "additional_question_options", ["additional_question_id"], name: "index_additional_question_options_on_additional_question_id", using: :btree

  create_table "additional_questions", force: :cascade do |t|
    t.string   "question"
    t.string   "question_type"
    t.string   "integer"
    t.integer  "paragraph_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "additional_questions", ["paragraph_id"], name: "index_additional_questions_on_paragraph_id", using: :btree

  create_table "paragraphs", force: :cascade do |t|
    t.text     "text"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "section_id"
    t.integer  "difficulty", limit: 2
  end

  add_index "paragraphs", ["section_id"], name: "index_paragraphs_on_section_id", using: :btree

  create_table "sections", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "surveys", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "paragraph_id"
    t.integer  "q1"
    t.integer  "q2"
  end

  add_index "surveys", ["paragraph_id"], name: "index_surveys_on_paragraph_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.integer  "age"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "gender"
    t.integer  "education_level"
    t.integer  "mother_language"
    t.string   "integer"
    t.text     "occupation"
    t.integer  "change_work"
    t.integer  "social_plan"
    t.integer  "years_completed"
  end

  add_foreign_key "additional_question_answers", "additional_question_options"
  add_foreign_key "additional_question_answers", "additional_questions"
  add_foreign_key "additional_question_answers", "surveys"
  add_foreign_key "additional_question_options", "additional_questions"
  add_foreign_key "additional_questions", "paragraphs"
  add_foreign_key "paragraphs", "sections"
  add_foreign_key "surveys", "paragraphs"
end
