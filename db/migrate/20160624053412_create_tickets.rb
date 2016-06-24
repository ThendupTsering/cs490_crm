class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.date :date_created
      t.text :feedback

      t.timestamps null: false
    end
  end
end
