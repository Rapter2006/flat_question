class CreateAssetsOffers < ActiveRecord::Migration
  def change
    create_table :assets_offers do |t|
      t.references :assets,   null: false
      t.references :offers,   null: false
      t.timestamps
    end
  end
end
