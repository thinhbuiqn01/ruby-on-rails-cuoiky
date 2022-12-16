class ProfileController < ApplicationController
  def index
    user = User.find_by_id(params[:id])
  end
end
