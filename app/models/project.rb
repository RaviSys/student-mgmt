class Project < ApplicationRecord
  include Validatable
  has_many :student_projects
  has_many :students, through: :student_projects
end
