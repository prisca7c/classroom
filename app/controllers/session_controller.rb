# frozen_string_literal: true

class SessionController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by_email(params[:user][:email])
    if @user&.authenticate(params[:user][:password])
      self.current_user = @user
      redirect_to profiles_path(@user)
    else
      @user = User.create(user_params)
      render :new
    end
  end

  def destroy
    session.delete :user_id if session[:user_id]
    redirect_to "/"
  end
end
