class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :types,                        null: false
      t.json       :location
      t.references :cities,                       null: false
      t.references :districts,                    null: false
      t.string     :street,                       null: false,    length: 255
      t.string     :home_num
      t.string     :square,                       null: false,    length: 255
      t.references :layout_types
      t.float      :price
      t.references :house_types
      t.boolean    :is_tradable,                  default: false
      t.integer    :balconies_count
      t.integer    :loggias_count
      t.references :toilet_bath_types
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

      t.timestamps
    end
  end
end
