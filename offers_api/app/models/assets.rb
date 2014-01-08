class Assets < ActiveRecord::Base
  has_many :assets_offers
  has_many :offers, through: :assets_offers
  
  belongs_to :organization
  belongs_to :category, class_name: "Term"
end
