class AssociateUserWithProficiency < ActiveRecord::Migration
  def change
    create_table :user_proficiency_types do |t|
      t.references :user, index: true, null: false, foreign_key: true, dependent: :delete
      t.references :proficiency_type, null: false, index: true, foreign_key: true, dependent: :delete
      t.string :user_comment

      t.timestamps null: false
    end
  end
end
