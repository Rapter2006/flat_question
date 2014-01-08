class Vocabulary < ActiveRecord::Base
  has_many :terms
  belongs_to :parent, class_name: "Term"
end
