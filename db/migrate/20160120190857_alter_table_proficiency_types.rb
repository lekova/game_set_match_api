class AlterTableProficiencyTypes < ActiveRecord::Migration
  def change
    add_index :user_proficiency_types, [:user_id], unique: :true
  end
end
