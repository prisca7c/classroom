class SessionController < ApplicationController

   def new
    @user = User.new
   end

  def create
    @user = User.find_by_email(params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      self.current_user = @user
      redirect_to profiles_path(@user)
    else
      @user = User.create(email: params[:user][:email], password: params[:user][:email])
      render :new
    end
  end

  def destroy
    session.delete :user_id if session[:user_id]
    redirect_to "/"
  end
end
