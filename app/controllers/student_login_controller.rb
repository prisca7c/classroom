class StudentLoginController < ApplicationController

  def new
    @user = User.new
  end

  def create
   user = User.create(name: params[:user][:name], email: params[:user][:email], password: params[:user][:password])
   user.role = Student.new
   user.save
   session[:user_id] = user.id
   redirect_to profiles_path(user)
  end

end
