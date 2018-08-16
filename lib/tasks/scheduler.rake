desc "This task is called by the Heroku scheduler add-on"
task :send_newsletter => :environment do
  puts "Sending newsletter to subscribers..."
    get 'newsletter'
  puts "done."
end
