class Course < ApplicationRecord
  include Validatable
  has_and_belongs_to_many :students
end
