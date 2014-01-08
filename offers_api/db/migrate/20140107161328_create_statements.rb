class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.string        :sender,    length: 255,      null: false
      t.string        :contacts,  length: 255,      null: false
      t.text          :body
      t.belongs_to    :offers
      t.belongs_to    :statuses,                    null: false
      t.belongs_to    :users

      t.timestamps
    end
  end
end

