class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string     :name,         length: 255,       null: false
      t.references :asset
      t.text       :about
      t.json       :contacts,                        null: false  

      t.timestamps
    end
  end
end
