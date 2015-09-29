class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :datetime
      t.integer :duration
      t.string :place
      t.integer :winner_id, index: true
      t.integer :loser_id, index: true
      t.text :comment
      t.integer :status, default: 0, null: false
      t.string :score

      t.foreign_key :users, :column => :winner_id, :dependent => :delete
      t.foreign_key :users, :column => :loser_id, :dependent => :delete

      t.timestamps null: false
    end
  end
end
