load 'app/services/cleaner.rb'
require 'dotenv'
require 'twitter'
Dotenv.load

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
				@result_name << result.user.screen_name
				puts "result push"
				sleep(5)
			end
		end
	end

	def follow
		@result_name.each do |etudiant|

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
	end
end

Bottwitter.new.perform