
class Cleaner
	def initialize
		mails_clean = CsvConvert.new.mails_insti_cult
	end

	def cleaning
		mails_insti_cult = "user@example.com"
		@etudiantnom = mails_insti_cult[/[^@]+/])	
	end
end




