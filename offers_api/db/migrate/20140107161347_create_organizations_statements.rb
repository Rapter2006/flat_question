class CreateOrganizationsStatements < ActiveRecord::Migration
  def change
    create_table :organizations_statements do |t|
      t.belongs_to  :organizations,   null: false
      t.belongs_to  :statements,      null: false
      
      t.timestamps
    end
  end
end
