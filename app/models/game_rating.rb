class GameRating < ActiveRecord::Base
  belongs_to :game
  belongs_to :user

  validates :game, presence: true
  validates :user, presence: true
end
