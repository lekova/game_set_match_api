class RemoveNotNullFromUserAgeGender < ActiveRecord::Migration
  def change
    change_column :users, :age, :integer, :null => true
    change_column :users, :gender, :string, :null => true
  end
end
