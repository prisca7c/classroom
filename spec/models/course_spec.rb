require 'rails_helper'

RSpec.describe Course, type: :model do
  it "has a name" do
    @course = Course.new
    @course.name = "History 101"
    expect(@course.name).to eq("History 101")
  end

  it "has many students" do
    @course = Course.new
    @course.students << Student.new
    expect(@course.students.length).to eq (1)
  end

  it "belongs to a teacher" do
    @course = Course.new
    @course.teacher = Teacher.new
    expect(@course.teacher.class.name).to eq("Teacher")
  end


end
