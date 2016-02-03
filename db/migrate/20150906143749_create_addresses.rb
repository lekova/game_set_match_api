class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name, null: false
      t.string :street, null: false
      t.string :city, null: false
      t.string :state
      t.string :zipcode, null: false
      t.string :country
      t.decimal :lat, null: false
      t.decimal :lng, null: false

      t.timestamps null: false
    end
  end
end
