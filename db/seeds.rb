# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


student = Student.create(
  first_name: 'Ravi',
  last_name: 'Singh',
  email: 'ravi@bootcamp.com'
)

20.times do |i|
  puts "Creating student #{i+1}"
  Student.create(
    first_name: "Student #{i+1}",
    last_name: "Lname #{i+1}",
    email: "student#{i+1}@bootcamp.com"
  )
end

Student.all.each do |student|
  student.blogs.create(title: "Dummy Blog for Student #{student.id}", content: "Custom content pending")
  student.blogs.create(title: "Dummy Blog for Student #{student.id}", content: "Custom content pending")
end

Course.create(name: 'Ruby on Rails bootcamp', description: 'Pending')
Course.create(name: 'ReactJs bootcamp', description: 'Pending')
Course.create(name: 'Angular Js bootcamp', description: 'Pending')
Course.create(name: 'NodeJs bootcamp', description: 'Pending')
Course.create(name: 'Java Bootcamp', description: 'Pending')
Course.create(name: 'Python Bootcamp', description: 'Pending')