class Course < ApplicationRecord
  validates :name, :description, presence: :true
  validates :description, length: { minimum: 10, maximum: 1000 }
  has_and_belongs_to_many :students
end
