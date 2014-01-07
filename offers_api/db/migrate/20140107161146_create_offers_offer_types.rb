class CreateOffersOfferTypes < ActiveRecord::Migration
  def change
    create_table :offers_offer_types do |t|
      t.belongs_to :offers,            null: false
      t.belongs_to :offer_types,       null: false

      t.timestamps
    end
  end
end
