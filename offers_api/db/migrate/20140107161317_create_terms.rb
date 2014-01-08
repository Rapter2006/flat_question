class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string     :name,         length: 255,       null: false
      t.string     :system_name,  length: 255
      t.belongs_to :vocabularies,                    null: false
      t.belongs_to :filter_links

      t.timestamps
    end
  end
end
