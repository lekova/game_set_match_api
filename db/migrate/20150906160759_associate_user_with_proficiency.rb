class AssociateUserWithProficiency < ActiveRecord::Migration
  def change
    create_table :user_proficiency_types do |t|
      t.references :user, index: true, foreign_key: true, :dependent => :delete
      t.references :proficiency_type, index: true, foreign_key: true, :dependent => :delete
      t.string :user_comment

      t.timestamps null: false
    end
  end
end
