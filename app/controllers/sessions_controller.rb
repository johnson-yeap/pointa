class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])

    if @user && @user.authenticate(params[:session][:password])
      # login
      session[:user_id] = @user.id
      flash[:success] = 'You have successfully signed in!'
      redirect_to dashboard_user_path(@user.id)
    else
      # incorrect password or username combination
      flash.now[:danger] = 'Invalid username or password'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
    flash[:success] = 'Successfully logged out'
    redirect_to root_path
  end
end
