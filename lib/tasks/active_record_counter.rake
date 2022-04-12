namespace :active_record_counter do
  desc "Display the count of student model"
  task students_count: :environment do
    puts "Students Count = #{Student.count}"
  end

  desc "Display the count of course model"
  task courses_count: :environment do
    puts "Courses Count = #{Course.count}"
  end

  desc "Display the count of blog model"
  task blogs_count: :environment do
    puts "Blogs Count = #{Blog.count}"
  end

end
