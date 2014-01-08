class CreateVocabularies < ActiveRecord::Migration
  def change
    create_table :vocabularies do |t|
      t.string     :name,         length: 255,       null: false
      t.string     :system_name,  length: 255,       null: false
      t.references :parent

      t.timestamps
    end
  end
end
