class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.string        :sender,    length: 255,      null: false
      t.string        :contacts,  length: 255,      null: false
      t.text          :body
      t.references    :offer
      t.references    :status,                      null: false
      t.references    :user

      t.timestamps
    end
  end
end

