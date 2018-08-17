load 'app/services/cleaner.rb'
require 'dotenv'
require 'twitter'
Dotenv.load

# Ce service nous permet de trouver les handles des personnes ciblées, ainsi que leur envoyer des
# tweets pour leur parler de THP. 

class Bottwitter
	def initialize
		@email_clean = Cleaner.new.perform
		@result_name = []
		@client = Twitter::REST::Client.new do |config|
 			config.consumer_key        = ENV["TWITTER_API_KEY"]
 			config.consumer_secret     = ENV["TWITTER_API_SECRET"]
 			config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
 			config.access_token_secret = ENV["TWITTER_TOKEN_SECRET"]
		end
	end

	def search
		@email_clean.each do |nom|
			@client.search(nom, result_type: "recent").take(1).each do |result|
	  			puts "#{result.user.screen_name}"
	  			handle = "@#{result.user.screen_name}"
	  			puts handle
	  			@result_name << handle
				sleep(5)
			end
		end
	end

	def follow
		@result_name.each do |etudiant|
		  begin
			@client.follow!(etudiant)
			puts @client.update("#{etudiant} Hello! Je suppose que tu as vu nos nombreux messages, je me demandais si tu avais un projet de startup ou d’entreprenariat en cours? http://bit.ly/bellejournee")		
		  rescue Exception, NotFound, Forbidden
		    next
		  end
		end
	end

	def messages
		@result_name.each do |etudiant|
		  begin
		  	@client.update("#{etudiant} Hello! Je suppose que tu as vu nos nombreux messages, je me demandais si tu avais un projet de startup ou d’entreprenariat en cours? http://bit.ly/bellejournee")		
		  rescue Exception, NotFound, Forbidden
		    next
		  end
		end
	end

	def perform
		search
		follow
		messages
	end
end

# Si vous voulez tester les listes, veuillez decommenter les lignes ci-dessus
# puts 
# puts CsvConvert.new.mailspoitiers
# puts CsvConvert.new.mailsnanterre