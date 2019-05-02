ActiveRecord::Schema.define(version: 20180411182815) do

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.string "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "alias"
    t.string "title"
    t.string "office"
    t.string "img_url"
    t.integer "dog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["dog_id"], name: "index_employees_on_dog_id"
  end

end
