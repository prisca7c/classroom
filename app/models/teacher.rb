# frozen_string_literal: true

class Teacher < ApplicationRecord
  has_many :users, as: :role
  has_many :courses
  has_many :students, through: :courses
end
