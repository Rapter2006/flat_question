class CreateTerms < ActiveRecord::Migration
  def change
    create_table :terms do |t|
      t.string     :name,         length: 255,       null: false
      t.string     :system_name,  length: 255
      t.references :vocabulary,                    null: false

      t.timestamps
    end
  end
end
