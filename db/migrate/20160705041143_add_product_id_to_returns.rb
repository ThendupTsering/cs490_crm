class AddProductIdToReturns < ActiveRecord::Migration
  def change
    add_column :returns, :product_id, :integer
    add_index :returns, :product_id
  end
end
