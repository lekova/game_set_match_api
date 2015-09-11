class GameSerializer < ActiveModel::Serializer
  attributes :id, :date, :place, :winner_name, :loser_name, :score, :comment

  def date
    object.datetime.strftime("%Y %B %e")
  end

  def winner_name
    object.winner.name
  end

  def loser_name
    object.loser.name
  end
end
