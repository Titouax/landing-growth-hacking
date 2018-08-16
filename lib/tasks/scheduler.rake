desc "This task is called by the Heroku scheduler add-on"
task :send_newsletter => :environment do
  if Time.now.monday?
    puts "Sending newsletter to subscribers..."
      get 'newsletter'
    puts "done."
  end
end
