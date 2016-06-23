class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :entity_type
      t.string :email
      t.string :phone_no
      t.string :fax_no
      t.string :gender
      t.string :career
      t.date :birthday
      t.string :entry_point
      t.date :entry_date
      t.integer :size
      t.string :contact_name
      t.string :industry

      t.timestamps null: false
    end
  end
end
