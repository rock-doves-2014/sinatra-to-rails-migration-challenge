class AuthController < ApplicationController

  def login
  end

  def create_session
    user = User.find_by(name: params[:name])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/smasher'
    else
      # need error msgs
      redirect_to '/login'
    end
  end


  def logout
    session[:user_id] = nil
    redirect_to '/'
  end

  def signup
  end

  def create
    # has to be a way to use params[:user] like in sinatra. think I have to change the form...
    user = User.new(name: params[:name], email: params[:email],
                     password: params[:password], password_confirmation: params[:password_confirmation])

    if user.save
      session[:user_id] = user.id
      redirect_to '/smasher'
    else
      # need error msgs
      redirect_to '/signup'
    end
  end

end