class CreateItemsSales < ActiveRecord::Migration[7.0]
  def change
    create_table :items_sales do |t|
      t.references :item, null: false, foreign_key: true
      t.references :sale, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :un_price

      t.timestamps
    end
  end
end
