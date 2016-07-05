class AddClientIdToReturns < ActiveRecord::Migration
  def change
    add_column :returns, :client_id, :integer
    add_index :returns, :client_id
  end
end
