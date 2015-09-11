class GamesController < ApplicationController
  skip_before_action :authenticate, only: [:login, :create]

  # GET /games
  def index
    # params[:won] == "true"
    filter = {}
    filter[:winner] = current_user.id if params[:won]
    filter[:loser] = current_user.id if params[:lost]
    filter[:status] = params[:status] if params[:status]

    @games = Game.where(filter)
    render json: @games
  end

  # GET /games/1
  def show
    render json: Game.find(params[:id])
  end

  # POST /games
  def create
    @game = Game.new(game_params)
    if @game.save
      render json: @game, status: :created, location: @game
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /games/1
  def update
    @game = Game.find(params[:id])

    if @game.update(game_params)
      head :no_content
    else
      render json: @game.errors, status: :unprocessable_entity
    end
  end

  # DELETE /games/1
  def destroy
    @game.destroy
    head :no_content
  end

  private

    def game_params
      params.require(:game).permit([
        :datetime,
        :duration,
        :place,
        :winner_id,
        :loser_id,
        :comment,
        :status,
        :score
      ])
    end
end
