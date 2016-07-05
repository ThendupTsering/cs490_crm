class AddProductIdToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :product_id, :integer
    add_index :transactions, :product_id
  end
end
