class Article < ActiveRecord::Base
  validates :title, :body, :photo, presence: true

  mount_uploader :photo, PhotoUploader

  # def long_title?
  #   title.length > 5
  # end

  # create_table "articles", force: :cascade do |t|
  #   t.string   "title"
  #   t.text     "body"
  #   t.datetime "created_at", null: false
  #   t.datetime "updated_at", null: false
  # end
end
