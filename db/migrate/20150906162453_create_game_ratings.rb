class CreateGameRatings < ActiveRecord::Migration
  def change
    create_table :game_ratings do |t|
      t.references :game, index: true, foreign_key: true
      t.references :user, :column => :rating_player_id, foreign_key: true, :dependent => :delete
      t.references :user, :column => :rated_player_id, foreign_key: true, :dependent => :delete
      t.integer :rate
      t.text :user_comment

      t.timestamps null: false
    end
    add_index :game_ratings, [:user_id, :game_id], :unique => true
  end
end
