class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :status
      t.string :product_name
      t.string :type
      t.string :keywords
      t.boolean :taxable
      t.float :price
      t.integer :total_sold
      t.float :gross_sale
      t.float :net_profit
      t.string :internal_notes

      t.timestamps
    end
  end
end
