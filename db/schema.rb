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

ActiveRecord::Schema.define(version: 2020_06_26_222347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "token"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cita", force: :cascade do |t|
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user1_id"
    t.bigint "user2_id"
    t.bigint "local_id"
    t.integer "invitation_id"
    t.index ["local_id"], name: "index_cita_on_local_id"
    t.index ["user1_id"], name: "index_cita_on_user1_id"
    t.index ["user2_id"], name: "index_cita_on_user2_id"
  end

  create_table "comentarios", force: :cascade do |t|
    t.text "contenido"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "local_id"
    t.bigint "user_id"
    t.index ["local_id"], name: "index_comentarios_on_local_id"
    t.index ["user_id"], name: "index_comentarios_on_user_id"
  end

  create_table "comunas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gustos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gustos_users", id: false, force: :cascade do |t|
    t.bigint "gusto_id", null: false
    t.bigint "user_id", null: false
  end

  create_table "interactions", force: :cascade do |t|
    t.boolean "like"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "user_id_destiny"
    t.index ["user_id"], name: "index_interactions_on_user_id"
  end

  create_table "invitations", force: :cascade do |t|
    t.integer "user_invita"
    t.integer "user_invitado"
    t.date "fecha"
    t.integer "local_id"
    t.boolean "confirma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.float "valoracion"
    t.text "descripcion"
    t.bigint "comuna_id"
    t.index ["comuna_id"], name: "index_locals_on_comuna_id"
    t.index ["email"], name: "index_locals_on_email", unique: true
    t.index ["reset_password_token"], name: "index_locals_on_reset_password_token", unique: true
  end

  create_table "lreports", force: :cascade do |t|
    t.text "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "reported_id"
  end

  create_table "matches", force: :cascade do |t|
    t.integer "user_id1"
    t.integer "user_id2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platos", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.integer "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "local_id"
    t.index ["local_id"], name: "index_platos_on_local_id"
  end

  create_table "ureports", force: :cascade do |t|
    t.text "reason"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "reported_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre"
    t.date "edad"
    t.string "descripcion"
    t.string "telefono"
    t.integer "genero", default: 0
    t.bigint "comuna_id"
    t.string "song"
    t.index ["comuna_id"], name: "index_users_on_comuna_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "cita", "locals"
  add_foreign_key "comentarios", "locals"
  add_foreign_key "interactions", "users"
  add_foreign_key "locals", "comunas"
  add_foreign_key "platos", "locals"
  add_foreign_key "users", "comunas"
end
