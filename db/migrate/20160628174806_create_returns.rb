class CreateReturns < ActiveRecord::Migration
  def change
    create_table :returns do |t|
      t.text :reason
      t.date :return_date

      t.timestamps null: false
    end
  end
end
