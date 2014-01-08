class Term < ActiveRecord::Base
  belongs_to :vocabulary
  belongs_to :filter_link, class_name: "Vocabulary"

  has_many :assets, foreign_key: "category_id"
end
