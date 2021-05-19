class UsersController < ApplicationController
  def index
    users = User.all
    render json: users.as_json
  end

  def create
    user = User.new(
      username: params[:username],
      email: params[:email]
    )
    user.save
    render json: user.as_json
  end

  def show
    user = User.find(params[:id])
    render json: user.as_json
  end

  def update
    user = User.find(params[:id])
    user.username = params[:username] || user.username
    user.email = params[:email] || user.email
    user.save
    render json: user.as_json
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    render json: {message: "User successfully deleted"}
  end
end
