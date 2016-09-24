class CreateDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :details do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :address
      t.bigint :phoneno
      t.string :state
      t.string :city
      t.integer :zipcode
      t.string :country

      t.timestamps
    end
  end
end
