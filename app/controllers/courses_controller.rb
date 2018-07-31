class CoursesController < ApplicationController

  before_action { role_is?(Teacher) || redirect_to(root_path) }

  def index
    @courses = Course.all
  end

  def new
    @course = Course.new
  end

  def create
  end

  def show
    @course = Course.find_by_id(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
