class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string        :login,           length: 255,   null: false
      t.string        :password,        length: 255,   null: false
      t.references    :organization
      t.references    :role,            null: false
      t.timestamps
    end
  end
end
