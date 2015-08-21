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

ActiveRecord::Schema.define(version: 20150815123748) do

  create_table "entrenadors", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "entrenadors", ["email"], name: "index_entrenadors_on_email", unique: true
  add_index "entrenadors", ["reset_password_token"], name: "index_entrenadors_on_reset_password_token", unique: true

  create_table "jugadors", force: :cascade do |t|
    t.string   "nom"
    t.string   "cognoms"
    t.string   "foto"
    t.date     "data_neix"
    t.string   "categoria"
    t.string   "equips"
    t.string   "posicio"
    t.string   "cama_dominant"
    t.integer  "entrenador_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "jugadors", ["entrenador_id"], name: "index_jugadors_on_entrenador_id"

  create_table "partits", force: :cascade do |t|
    t.string   "jornada"
    t.date     "data_partit"
    t.string   "rival"
    t.string   "comentaris"
    t.integer  "entrenador_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "partits", ["entrenador_id"], name: "index_partits_on_entrenador_id"

  create_table "partits_jugadors", force: :cascade do |t|
    t.integer  "partit_id"
    t.integer  "jugador_id"
    t.boolean  "titular"
    t.boolean  "no_convocat"
    t.integer  "min_disp"
    t.integer  "gols"
    t.integer  "targetes_grogues"
    t.integer  "targetes_vermelles"
    t.boolean  "partit_no_disp"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "partits_jugadors", ["jugador_id"], name: "index_partits_jugadors_on_jugador_id"
  add_index "partits_jugadors", ["partit_id"], name: "index_partits_jugadors_on_partit_id"

end
