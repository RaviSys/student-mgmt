class Student < ApplicationRecord
  has_many :blogs
  has_and_belongs_to_many :courses
  has_many :student_projects
  has_many :projects, through: :student_projects
  
  validates :first_name, :last_name, :email, presence: true
  validates :email, uniqueness: true
  validates :first_name, :last_name, length: { minimum: 2, maximum: 50 }
  validates :first_name, :last_name, format: { with: /\A[a-zA-Z]+\z/, message: 'only letters are allowed' }

  validate :validate_student_age

  after_commit :display_student_age

  def display_student_age
    if self.date_of_birth.present?
      age = Date.today.year - self.date_of_birth.year
      puts "===========Age of the student is #{age}==========="
    else
      puts "===========Age can not be calculated without date_of_birth==========="
    end
  end

  def validate_student_age
    if self.date_of_birth.present?
      age = Date.today.year - self.date_of_birth.year
      if age < 15
        errors.add(:age, ' please provide a valid date of birth here. Age must be greater than 15')
      end
    end
  end

end
