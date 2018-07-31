class SessionController < ApplicationController

   def new; end

   def create
    User.find(params[:email]).authenticate(params[:password])
   end
end
