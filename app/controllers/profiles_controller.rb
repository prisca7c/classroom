# frozen_string_literal: true

class ProfilesController < ApplicationController
  def show
    @user = User.find(session[:user_id])
  end
end
