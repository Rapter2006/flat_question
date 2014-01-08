class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :type,                        null: false
      t.references :subtype,                     null: false
      t.json       :location
      t.references :city,                        null: false
      t.references :district,                    null: false
      t.string     :street,                      null: false,    length: 255
      t.string     :home_num
      t.string     :square,                      null: false,    length: 255
      t.references :layout_type
      t.float      :price
      t.references :house_type
      t.boolean    :is_tradable,                 default: false
      t.integer    :balconies_count
      t.integer    :loggias_count
      t.references :toilet_bath_type
      t.integer    :toilets_count
      t.integer    :baths_count
      t.integer    :cargo_lifts_count
      t.integer    :lifts_count
      t.text       :realtor_description
      t.text       :description
      t.json       :contacts
      t.integer    :floors_count
      t.integer    :garages_count
      t.integer    :time_to_go_to_underground
      t.string     :floor_num,                    length: 255
      t.references :organization,                null: false

      t.timestamps
    end
  end
end
