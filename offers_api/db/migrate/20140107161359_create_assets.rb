class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.attachment :file_data
      t.references :categories
      
      t.timestamps
    end
  end
end
