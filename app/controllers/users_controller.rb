class UsersController < ApplicationController
  skip_before_action :authenticate, only: [:login, :create]
  # before_action :set_user, only: [:show, :update, :destroy]

  # POST /login
  def login
    token = User.login(params[:email], params[:password])
    if token
      render json: { token: token }
    else
      head :unauthorized
    end
  end

  # GET /users
  # GET /users.json
  def index
    # curr_addr = current_user.
    @users = User.joins(:addresses).where({addresses: {city: current_user.addresses.first.city}})
    render json: @users
  end

  def refresh_navbar
    render json: current_user
  end

  # GET /users/1
  # GET /users/1.json
  def show
    render json: User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create

    @user = User.new(user_credentials)
    @user.user_proficiency_types.new(proficiency_params)
    if @user.save
      render json: @user, status: :created, location: @user, serializer: UserRegisteredSerializer
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      head :no_content
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end



  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    head :no_content
  end

  private

    def user_credentials
      params.require(:credentials).permit(:email, :password, :password_confirmation, :name, :age, :gender, :about_me, :image)
    end

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :name, :age, :gender, :about_me, :image)
    end

    def proficiency_params
      params.require(:proficiency).permit(:proficiency_type_id)
    end
end
