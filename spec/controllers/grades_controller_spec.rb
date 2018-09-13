require 'rails_helper'
require 'factory_bot'
RSpec.describe GradesController, type: :controller do

  it "has a show page" do
    teacher = FactoryBot.build(:user,:teacher)
    teacher.save!
    student = FactoryBot.build(:user,:student)
    student.save!
    course = FactoryBot.build(:course)
    course.teacher_id = teacher.id
    course.save!
    grade = FactoryBot.build(:grade)
    enrollment = FactoryBot.build(:enrollment)
    enrollment.course_id = course.id
    enrollment.student_id = student.role_id
    enrollment.save!
    grade.enrollment_id = enrollment.id
    grade.save!
    session[:user_id] = teacher.id
    get :show, params: {id: grade.id}
    expect(response).to render_template :show
  end

  it "updates the grade" do
    teacher = FactoryBot.build(:user,:teacher)
    teacher.save!
    student = FactoryBot.build(:user,:student)
    student.save!
    course = FactoryBot.build(:course)
    course.teacher_id = teacher.id
    course.save!
    grade = FactoryBot.build(:grade)
    enrollment = FactoryBot.build(:enrollment)
    enrollment.course_id = course.id
    enrollment.student_id = student.role_id
    enrollment.save!
    grade.enrollment_id = enrollment.id
    grade.save!
    session[:user_id] = teacher.id
    patch :update, params: {id: grade.id, letter: "B"}
    expect(Grade.all.last.letter).to eq("B")
  end
end
