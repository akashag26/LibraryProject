class SessionsController < ApplicationController
  def new
  end

  def homepage
    if current_user
      redirect_to home_path(@current_user)
    else
      render 'new'
    end
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to home_path(@current_user)
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
