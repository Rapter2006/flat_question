class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string        :login,           length: 255,   null: false
      t.string        :password,        length: 255,   null: false
      t.belongs_to    :organizations
      t.belongs_to    :roles,           null: false
      t.timestamps
    end
  end
end
