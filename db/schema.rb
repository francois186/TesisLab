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

ActiveRecord::Schema.define(:version => 20130222030325) do

  create_table "compromisos", :force => true do |t|
    t.date     "FECHA_CREACION",     :null => false
    t.date     "FECHA_COMPROMETIDA", :null => false
    t.date     "FECHA_CIERRE",       :null => false
    t.string   "ROL",                :null => false
    t.integer  "TESIS_ID",           :null => false
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "compromisos", ["TESIS_ID"], :name => "fk_compromisos_tesis_id"

  create_table "entregables", :force => true do |t|
    t.string   "NOMBRE",        :null => false
    t.date     "FECHA_ENTREGA", :null => false
    t.integer  "TESIS_ID",      :null => false
    t.string   "URI_DOCUMENTO", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "entregables", ["TESIS_ID"], :name => "fk_entregables_tesis_id"

  create_table "estudiantes", :force => true do |t|
    t.string   "PRIMER_NOMBRE",    :null => false
    t.string   "SEGUNDO_NOMBRE"
    t.string   "PRIMER_APELLIDO",  :null => false
    t.string   "SEGUNDO_APELLIDO"
    t.integer  "CODIGO",           :null => false
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "fuente_bibliograficas", :force => true do |t|
    t.string   "URL"
    t.string   "AUTOR"
    t.string   "LIBRO"
    t.string   "RESUMEN"
    t.date     "FECHA_BIBLIOGRAFIA"
    t.date     "FECHA_LECTURA"
    t.integer  "TESIS_ID",           :null => false
    t.integer  "ESTUDIANTES_ID",     :null => false
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "fuente_bibliograficas", ["ESTUDIANTES_ID"], :name => "fk_fuentes_estudiantes_id"
  add_index "fuente_bibliograficas", ["TESIS_ID"], :name => "fk_fuentes_tesis_id"

  create_table "profesores", :force => true do |t|
    t.integer  "PRIMER_NOMBRE",    :null => false
    t.string   "SEGUNDO_NOMBRE"
    t.string   "PRIMER_APELLIDO",  :null => false
    t.string   "SEGUNDO_APELLIDO"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "tesis", :force => true do |t|
    t.string   "NOMBRE",       :null => false
    t.date     "FECHA_INICIO", :null => false
    t.string   "DESCRIPCION"
    t.integer  "PROFESOR_ID",  :null => false
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "tesis", ["PROFESOR_ID"], :name => "fk_tesis_profesor_id"

  create_table "tesis_estudiantes", :id => false, :force => true do |t|
    t.integer  "TESIS_ID",      :null => false
    t.integer  "ESTUDIANTE_ID", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "tesis_estudiantes", ["ESTUDIANTE_ID"], :name => "fk_tesis_estudiantes_estudiante_id"
  add_index "tesis_estudiantes", ["TESIS_ID"], :name => "fk_tesis_estudiantes_tesis_id"

end
