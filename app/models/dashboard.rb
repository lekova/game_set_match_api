class Dashboard
  def initialize(user)
    @user = user
    @months = all_months
  end

  #   totals; {
  #     won_games_count: 1,
  #     lost_games_count: 3,
  #     oppenents_count: 2
  #   },
  #   labels,
  #   chart_data: {
  #     months: [],
  #     won_games: [],
  #     lost_games: []
  #   }
  # }

  def statistics
    statistics = {}
    totals = {
      'won_games_count': Game.where(winner_id: @user.id).length,
      'lost_games_count': Game.where(loser_id: @user.id).length,
      'opponents_count': @user.opponents.length
    }
    statistics['totals'] = totals
    statistics['labels'] = @months.keys
    statistics['data'] = [all_wins_count, all_losses_count]
    statistics
  end

  def all_months
    dates = Game.select(:datetime).uniq.where('winner_id = ? OR loser_id = ?', @user.id, @user.id).order(:datetime)
    dates.each_with_object({}) do |date, months|
      months[date.datetime.strftime('%B')] = 0
    end
  end

  def all_wins_count
    win_count = all_months
    wins = Game.select(:datetime).where(winner_id: @user.id)
    wins.map do |date|
      month = date.datetime.strftime('%B')
      win_count[month] += 1 if win_count[month]
    end
    win_count.values
  end

  def all_losses_count
    loss_count = all_months
    losses = Game.select(:datetime).where(loser_id: @user.id)
    losses.map do |date|
      month = date.datetime.strftime('%B')
      loss_count[month] += 1 if loss_count[month]
    end
    loss_count.values
  end
end
