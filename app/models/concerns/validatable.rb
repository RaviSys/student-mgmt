module Validatable
  extend ActiveSupport::Concern

  included do 
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
  end
end
