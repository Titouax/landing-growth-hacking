# Load the dotenv gem
require 'dotenv'
require 'gibbon'

# This tells dotenv to read the .env file and set the appropriate values in ENV
Dotenv.load

class

  def collect_mails
    export = Gibbon::Export.new(api_key: ENV['MAILCHIMP_API_KEY'], timeout: 1200)
    export.list(id: ENV['MAILCHIMP_LIST_ID']) do |row|
      puts row[0]
    end
  end

  def send_mails
    
  end

end
