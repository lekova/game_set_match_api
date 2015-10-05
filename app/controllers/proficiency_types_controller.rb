class ProficiencyTypesController < ApplicationController
  skip_before_action :authenticate, only: [:login, :create]

  def index
    render json: ProficiencyType.all
  end
end
