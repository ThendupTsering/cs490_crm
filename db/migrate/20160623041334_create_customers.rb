class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :email
      t.string :phone_no
      t.string :fax_no
      t.string :type

      t.timestamps null: false
    end
  end
end
