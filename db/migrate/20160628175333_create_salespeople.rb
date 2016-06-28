class CreateSalespeople < ActiveRecord::Migration
  def change
    create_table :salespeople do |t|
      t.string :name
      t.string :team

      t.timestamps null: false
    end
  end
end
