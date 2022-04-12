class Course < ApplicationRecord
  paginates_per 10
  include Validatable
  has_and_belongs_to_many :students
  has_rich_text :content
end
