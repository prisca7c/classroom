class ProfilesController < ApplicationController
  def show
    @user = User.find(session[:user_id])
    binding.pry
  end
end
