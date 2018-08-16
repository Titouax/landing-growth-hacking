# Load the dotenv gem
require 'dotenv'
require 'gibbon'

# This tells dotenv to read the .env file and set the appropriate values in ENV
Dotenv.load

class Mchimp

  def collect_mails
    all_mails = []
    export = Gibbon::Export.new(api_key: ENV['MAILCHIMP_API_KEY'], timeout: 1200)
    export.list(id: ENV['MAILCHIMP_LIST_ID']) do |row|
      if row[0] != "Email Address"
        all_mails << row[0]
      end
    end
    return all_mails
  end

end
