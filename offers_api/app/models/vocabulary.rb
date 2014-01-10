class Vocabulary < ActiveRecord::Base
  has_many :terms
  belongs_to :parent, class_name: "Term", foreign_key: "parent_id"
end
