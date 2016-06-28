class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :status
      t.date :open_date
      t.date :close_date

      t.timestamps null: false
    end
  end
end
