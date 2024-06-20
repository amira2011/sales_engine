class CreateSalesEngineSales < ActiveRecord::Migration[7.1]
  def change
    create_table :sales_engine_sales do |t|
      t.string :product_name
      t.string :amount

      t.timestamps
    end
  end
end
