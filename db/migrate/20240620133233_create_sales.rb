class CreateSales < ActiveRecord::Migration[7.1]
  def change
    create_table :sales do |t|
      t.string :product_name
      t.string :amount

      t.timestamps
    end
  end
end
