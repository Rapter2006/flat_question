class CreateOrganizationsStatements < ActiveRecord::Migration
  def change
    create_table :organizations_statements do |t|
      t.references  :organization,   null: false
      t.references  :statement,      null: false
      
      t.timestamps
    end
  end
end
