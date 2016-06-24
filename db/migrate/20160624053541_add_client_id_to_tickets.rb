class AddClientIdToTickets < ActiveRecord::Migration
  def change
    add_column :tickets, :client_id, :integer
    add_index :tickets, :client_id
  end
end
