# frozen_string_literal: true

class TeacherSignupController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    @user.role = Teacher.new
    if @user.save
      session[:user_id] = @user.id
      redirect_to profiles_path(@user)
    else
      render :new
    end
  end
end
