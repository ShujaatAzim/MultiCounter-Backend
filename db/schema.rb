ActiveRecord::Schema.define(version: 2019_11_27_004115) do

  create_table "counters", force: :cascade do |t|
    t.string "name"
    t.integer "amount"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
