class SessionsController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]
  def welcome
  end

  def welcome
  end

  def create
    @user = User.find_by(username: params[:username])
       if @user && @user.authenticate(params[:password])
       sessions[:user_id] = @user.id
    redirect_to '/welcome'
    else
     redirect_to '/login'
    end
  end

  def login
  end

  
end
