class AddSalespersonIdToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :salesperson_id, :integer
    add_index :transactions, :salesperson_id
  end
end
