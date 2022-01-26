class Demo < ApplicationRecord
  has_one :sub_demo

  before_create :greeting_message

  def greeting_message
    puts "Hey! I will run before you create an object!"
  end
end
