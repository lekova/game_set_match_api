class DashboardController < OpenReadController
  # Returns the following object:
  # {
  #   totals; {
  #     won_games_count: 1,
  #     lost_games_count: 3,
  #     oppenents_count: 2
  #   },
  #   chart_data: {
  #     months: [],
  #     won_games: [],
  #     lost_games: []
  #   }
  # }
  def statistics
    render json: Dashboard.new(current_user).statistics
  end
end
