class OfferType < ActiveRecord::Base
  has_many :offers_offer_types
  has_many :offers,  through: :offers_offer_types
end
