class AdminController < ApplicationController
  def dashboard
    if session[:user_id]
      @user = User.find_by(id: session[:user_id])
    else
      redirect_to "/login"
    end
  end
end
