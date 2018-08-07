# frozen_string_literal: true

class ApplicationController < ActionController::Base
protected

  before_action :require_login
  skip_before_action :require_login, only: %i[new home create]

  def require_login
    redirect_to "/" unless session.include? :user_id
  end

  # def current_role
  #   user = User.find(session[:user_id])
  #   user.role
  # end

  def ensure_is_a_teacher
    redirect_to "/" unless role_is?(Teacher)
  end

  # def create
  #   User.new(user_params, role: Teacher.new(role_params))
  # end

  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def current_user=(user)
    @current_user = session[:user_id] = user.id
  end

  def current_role
    current_user.role
  end

private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

  delegate :role_is?, to: :current_user
end
