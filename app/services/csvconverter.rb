require 'csv'

class CsvConvert
  attr_accessor :emailscult, :emailpoitiers, :emailnanterre

  def initialize
    @emailscult = []
    @emailpoitiers = []
    @emailnanterre = []
  end

  def csv_to_arrayhash
    csv_data = CSV.read 'db/liste.csv'
    headers = csv_data.shift.map {|i| i.to_s }
    string_data = csv_data.map {|row| row.map {|cell| cell.to_s } }
    array_of_hashes = string_data.map {|row| Hash[*headers.zip(row).flatten] }
    return array_of_hashes
  end

  def separate_mails
    csv_to_arrayhash.each do |hash|
      if hash["category_id"] == "1"
         @emailscult << hash["email"]
      elsif hash["category_id"] == "2"
         @emailpoitiers << hash["email"]
      end
    end
  end

  def mails_insti_cult
    separate_mails
    return @emailscult
  end

  def mailspoitiers
    separate_mails
    return @emailpoitiers
  end

  def mailsnanterre
    csv_data = CSV.read 'db/scrapp.csv'
    headers = csv_data.shift.map {|i| i.to_s }
    string_data = csv_data.map {|row| row.map {|cell| cell.to_s } }
    array_of_hashes = string_data.map {|row| Hash[*headers.zip(row).flatten] }
    array_of_hashes.each do |hash|
      @emailnanterre << hash["email"]
    end
    return @emailnanterre
  end
end

#CsvConvert.new.mails_insti_cult
#CsvConvert.new.mailspoitiers
#

puts CsvConvert.new.mailsnanterre
