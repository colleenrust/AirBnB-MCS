class UsersController < ApplicationController

  def new
    @user = User.new
    render json: {message: "testing new user action"}
  end
   
end
