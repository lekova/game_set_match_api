class AddNameToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :name, :string
    execute 'UPDATE addresses SET name = (SELECT name FROM user_addresses WHERE addresses.id = user_addresses.address_id LIMIT 1);'
    remove_column :user_addresses, :name
  end
end
