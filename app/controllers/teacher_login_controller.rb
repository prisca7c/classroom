class TeacherLoginController < ApplicationController

  def new
    @user = User.new
  end

  def create
   user = User.create(name: params[:user][:name], email: params[:user][:email], password: params[:user][:password])
   user.role = Teacher.new
   user.save
   redirect_to profile_path(user)
  end

end
