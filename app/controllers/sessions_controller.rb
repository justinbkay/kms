class SessionsController < ApplicationController
  before_filter :security, only: :destroy

  def new
  end

  def create
    user = User.where(email: params[:email], active: true).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url
    else
      flash.now.alert = "Authentication failed"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to login_path, notice: "Logged out!"
  end
end
