class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false, index: { unique: true }
      t.string :password_digest, null: false
      t.string :name, null: false
      t.integer :age, null: false
      t.string :gender, null: false
      t.text :about_me
      t.string :token, null: false, index: {unique: true}
      t.attachment :image

      t.timestamps null: false
    end
  end
end
