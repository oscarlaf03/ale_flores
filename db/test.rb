require 'csv'
counter = 0

CSV.foreach('data_seed.csv', headers: :first_row) do |row|
  puts row['name'].length

end
