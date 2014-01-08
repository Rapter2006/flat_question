class OffersOfferType < ActiveRecord::Base
  belongs_to :offer
  belongs_to :offer_type
end
