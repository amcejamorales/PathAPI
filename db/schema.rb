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

ActiveRecord::Schema.define(version: 2018_07_21_225657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arc_nodes", force: :cascade do |t|
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "arc_id"
    t.bigint "node_id"
    t.index ["arc_id"], name: "index_arc_nodes_on_arc_id"
    t.index ["node_id"], name: "index_arc_nodes_on_node_id"
  end

  create_table "arcs", force: :cascade do |t|
    t.string "direction"
    t.float "arc_distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "graph_id"
    t.datetime "built_on"
    t.bigint "node_id"
    t.index ["graph_id"], name: "index_arcs_on_graph_id"
    t.index ["node_id"], name: "index_arcs_on_node_id"
  end

  create_table "graphs", force: :cascade do |t|
    t.datetime "built_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nodes", force: :cascade do |t|
    t.integer "order"
    t.boolean "forward_opening"
    t.boolean "left_opening"
    t.boolean "right_opening"
    t.float "distance_from_start"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "built_on"
    t.bigint "graph_id"
    t.index ["graph_id"], name: "index_nodes_on_graph_id"
  end

  add_foreign_key "arc_nodes", "arcs"
  add_foreign_key "arc_nodes", "nodes"
  add_foreign_key "arcs", "graphs"
  add_foreign_key "nodes", "graphs"
end
