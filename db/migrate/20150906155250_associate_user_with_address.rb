class AssociateUserWithAddress < ActiveRecord::Migration
  def change
    create_table :user_addresses do |t|
      t.references :user, index: true, foreign_key: true
      t.references :address, index: true, foreign_key: true
      t.string :name

      t.timestamps null: false
    end
  end
end
