class ProfilesController < ApplicationController
  def show
    @role = User.last.role
  end
end
