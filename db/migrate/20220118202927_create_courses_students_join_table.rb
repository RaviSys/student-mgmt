class CreateCoursesStudentsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_join_table :courses, :students
  end
end
