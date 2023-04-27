class UsersController < ApplicationController

  def new
    @user = User.new
    render template: "users/new"
    # render json: {message: "testing new user action"}
  end

  def create
    @user = User.new(
      name: params[:user][:name],
      email: params[:user][:email],
      password: params[:user][:password],
      password_confirmation: params[:user][:password_confirmation],
      image: params[:user][:image],
    )
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/"
    else
      render :new, status: :unprocessable_entity 
    end
  end
end
