namespace :example_task do 
  desc 'Greeting message task'

  task greet_the_user: :environment do 
    puts 'Hello User! Welcome to the rake world!'
  end

  task say_bye_to_user: :environment do 
    puts 'Hello User! It is the time to signoff now. Please try this rake task at your end!'
  end
end
