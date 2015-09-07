class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street, null: false
      t.string :city, null: false
      t.string :state
      t.string :zipcode, null: false
      t.string :country

      t.timestamps null: false
    end
  end
end
