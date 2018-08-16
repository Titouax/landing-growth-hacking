require 'csv'

csv_data = CSV.read 'liste.csv'

headers = csv_data.shift.map {|i| i.to_s }

string_data = csv_data.map {|row| row.map {|cell| cell.to_s } }

array_of_hashes = string_data.map {|row| Hash[*headers.zip(row).flatten] }
puts array_of_hashes
