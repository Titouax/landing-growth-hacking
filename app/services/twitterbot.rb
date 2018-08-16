require 'dotenv'
require 'twitter'
Dotenv.load

class Bottwitter
	def initialize
		@etudiantnom = []
		@client = Twitter::REST::Client.new do |config|
 			config.consumer_key        = ENV["TWITTER_API_KEY"]
 			config.consumer_secret     = ENV["TWITTER_API_SECRET"]
 			config.access_token        = ENV["TWITTER_ACCESS_TOKEN"]
 			config.access_token_secret = ENV["TWITTER_TOKEN_SECRET"]
		end
	end

	def search
		@client.search("pope", result_type: "recent").take(1).each do |tweet|
	  		puts "#{tweet.user.screen_name}: #{tweet.text}"
	 		@client.favorite(tweet)
	 		@client.update("{@tweet.user.screen_name} Welcome to Philadelphia!")
		end
	end

	def follow
		@etudiantnom.each do |etudiant|

		  begin
			@client.follow!(etudiant)
		  rescue Exception, NotFound, Forbidden
		    next 
		  end
		end
	end

	def perform
		search
		follow
		tweet
	end
end

