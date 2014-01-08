class CreateAssetsOffers < ActiveRecord::Migration
  def change
    create_table :assets_offers do |t|
      t.references :asset,   null: false
      t.references :offer,   null: false
      t.timestamps
    end
  end
end
