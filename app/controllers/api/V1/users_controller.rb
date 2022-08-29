class Api::V1::UsersController < ApplicationController
protect_from_forgery with: :null_session
before_action :set_user, only: %i[ show update destroy]

  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end 

  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    end
  end

  def destroy
    if @user.destroy
      render json: @user
    end
  end


  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :image)
  end

end