class AddSalespersonIdToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :salesperson_id, :integer
    add_index :tickets, :salesperson_id
  end
end
