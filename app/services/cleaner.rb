load 'app/services/csvconverter.rb'

# Ce service nous permet d'effacer toutes les informations après le "@", le "@" y compris

class Cleaner
	def initialize
	  @mails_nanterre = []
	  @mails_insti = []
	  @mails_poitiers = []
	  @etudiantnom = []
	end

	def cleaning
	  @mails_inst = CsvConvert.new.mails_insti_cult
	  @mails_poitiers = CsvConvert.new.mailspoitiers
	  @mails_nanterre = CsvConvert.new.mailsnanterre
	  @mails_inst.each do |item|
		@etudiantnom << item[/[^@]+/]	
	  end 
	  @mails_poitiers.each do |item|
		@etudiantnom << item[/[^@]+/]	
	  end 
	  @mails_nanterre.each do |item|
		@etudiantnom << item[/[^@]+/]	
	  end 
	  return @etudiantnom
	end

	def perform
		cleaning
	end
end


