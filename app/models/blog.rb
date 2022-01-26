class Blog < ApplicationRecord
  belongs_to :student
  validates :title, :content, presence: :true
  validates :content, length: { minimum: 10, maximum: 1000 }
end
