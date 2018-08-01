class SessionController < ApplicationController

   def new
    @user = User.new
   end

   def create
    user = User.find_by_email(params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      redirect_to profiles_path(user)
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session.delete :user_id if session[:user_id]
    redirect_to "/"
  end
end
