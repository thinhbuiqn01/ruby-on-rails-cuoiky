class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    
    if user.present? && params[:password]
      session[:user_id] = user.id
      if user.status === 0
        redirect_to "/"
      else
        redirect_to "/admin"
      end
    else
      flash.now[:alert] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
