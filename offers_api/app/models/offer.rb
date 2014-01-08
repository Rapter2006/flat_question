class Offer < ActiveRecord::Base
  has_many :statements

  has_many :assets_offers
  has_many :assets, through: :assets_offers

  has_many :offers_offer_types
  has_many :offer_types,  through: :offers_offer_types

  belongs_to :type, class_name: "Term"
  belongs_to :city, class_name: "Term"
  belongs_to :district, class_name: "Term"
  belongs_to :layout_type, class_name: "Term"
  belongs_to :house_type, class_name: "Term"
  belongs_to :toilet_bath_type, class_name: "Term"
end
