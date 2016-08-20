class Products < ActiveRecord::Migration
  def change
    create_table :products do |t|
    t.string :name 
    t.string :category
    t.integer :category_id
    t.timestamps
  end
    
  end
end
