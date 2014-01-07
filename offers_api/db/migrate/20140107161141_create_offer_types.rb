class CreateOfferTypes < ActiveRecord::Migration
  def change
    create_table :offer_types do |t|
      t.string     :name,         length: 255,       null: false
      t.string     :system_name,  length: 255,       null: false
      
      t.timestamps
    end
  end
end
