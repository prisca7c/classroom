require 'rails_helper'

RSpec.describe Student, type: :model do

  it "has many courses" do
    course = Course.new
    student = Student.new
    student.courses << course
    expect(student.courses.length).to eq(1)
  end

  it "has a collection of fall courses" do
    fall_course = Course.new(semester: "Fall 2018")
    winter_course = Course.new(semester: "Winter 2019")
    student = Student.new
    student.courses << winter_course
    student.courses << fall_course
    expect(student.fall_2018.first.semester).to eq("Fall 2018")
  end

  it "has a collection of winter courses" do
    fall_course = Course.new(semester: "Fall 2018")
    winter_course = Course.new(semester: "Winter 2019")
    student = Student.new
    student.courses << fall_course
    student.courses << winter_course
    expect(student.winter_2019.first.semester).to eq("Winter 2019")
  end


end
