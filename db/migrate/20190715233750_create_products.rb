class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :quantity
      t.string :description
      t.string :name
      t.float :price

      t.timestamps
    end
  end
end
