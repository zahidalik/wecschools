class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in user
      flash[:success] = "Logged in successfully!"
      redirect_to root_url
    else
      flash.now[:danger] = "Invalid username/password combination"
      render :new, status: :bad_request
    end
  end

  def destroy
    log_out
    flash[:success] = "Logged out successfully"
    redirect_to root_url, status: :see_other
  end
end