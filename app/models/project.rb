class Project < ApplicationRecord
  paginates_per 10
  include Validatable
  has_many :student_projects
  has_many :students, through: :student_projects
end
