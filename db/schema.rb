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

ActiveRecord::Schema.define(version: 2022_12_26_204008) do

  create_table "informe_aux_saudes", force: :cascade do |t|
    t.integer "ano"
    t.string "doc_todos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "doc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status"
    t.string "name2"
  end

  create_table "valor_mensal_creditados", force: :cascade do |t|
    t.integer "informe_aux_saude_id"
    t.integer "mes"
    t.decimal "valor"
    t.string "documentos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["informe_aux_saude_id"], name: "index_valor_mensal_creditados_on_informe_aux_saude_id"
  end

  create_table "valor_recebidos", force: :cascade do |t|
    t.integer "mes"
    t.decimal "valor", precision: 8, scale: 2
    t.string "documentos"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
