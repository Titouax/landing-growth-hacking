desc "This task is called by the Heroku scheduler add-on"
task :send_newsletter => :environment do

    puts "Sending newsletter to subscribers..."
      NewsletterMailer.contact(Mchimp.new.collect_mails).deliver_now
    puts "done."

end
