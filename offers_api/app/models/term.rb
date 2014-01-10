class Term < ActiveRecord::Base
  belongs_to :vocabulary
  has_one :child_vocabulary, class_name: "Vocabulary", foreign_key: "parent_id"

  has_many :assets, foreign_key: "category_id"

  def as_json(options = {})
    options[:only] ||= [:name, :system_name]
    super(options)
  end
end
