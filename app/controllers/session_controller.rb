class SessionController < ApplicationController
  def new
  end

  def show
    @user = User.find_by(username: params[:session][:username])
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to user
    else
      # Выдать сообщение об ошибке.
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
