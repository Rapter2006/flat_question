class CreateOffersOfferTypes < ActiveRecord::Migration
  def change
    create_table :offers_offer_types do |t|
      t.references :offer,            null: false
      t.references :offer_type,       null: false

      t.timestamps
    end
  end
end
