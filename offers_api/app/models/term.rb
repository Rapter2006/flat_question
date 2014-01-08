class Term < ActiveRecord::Base
  belongs_to :vocabulary
  has_one :child_vocabulary, class_name: "Vocabulary"

  has_many :assets, foreign_key: "category_id"
end
