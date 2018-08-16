require 'csv'

class CsvConvert
  attr_accessor :cat1emails, :cat2emails

  def initialize
    @cat1emails = []
    @cat2emails = []
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
         @cat1emails << hash["email"]
      elsif hash["category_id"] == "2"
         @cat2emails << hash["email"]
      end
    end
  end

  def category1mail
    separate_mails
    return @cat1emails
  end

  def category2mail
    separate_mails
    return @cat2emails
  end

  def csv_to_array
    csv_data = CSV.read 'scrap.csv'
    
  end
end

CsvConvert.new.category1mail
CsvConvert.new.category2mail
