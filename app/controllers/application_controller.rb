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
    unless role_is?(Teacher)
      redirect_to "/"
    end
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

  delegate :role_is?, to: :current_user
end

