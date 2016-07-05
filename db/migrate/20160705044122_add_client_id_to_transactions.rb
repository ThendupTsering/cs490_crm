class AddClientIdToTransactions < ActiveRecord::Migration
  def change
    add_column :transactions, :client_id, :integer
    add_index :transactions, :client_id
  end
end
