require 'csv'
counter = 0

puts 'Creating owner users'
if User.find_by(email: 'oscar@teste.com').nil?
  oscar = User.new(email:'oscar@teste.com', password:'123123')
  oscar.site_owner = true
  oscar.save
else
  oscar = User.find_by(email: 'oscar@teste.com')
  oscar.site_owner = true
  oscar.save
end

if User.find_by(email: 'ortizg.oscar@gmail.com').nil?
  oscar = User.new(email:'ortizg.oscar@gmail.com', password:'123123')
  oscar.site_owner = true
  oscar.save
else
  oscar = User.find_by(email: 'ortizg.oscar@gmail.com')
  oscar.site_owner = true
  oscar.save
end

if User.find_by(email: 'al@alessandralima.com ').nil?
  ale = User.new(email:'al@alessandralima.com ', password:'123123')
  ale.site_owner = true
  ale.save
else
  ale = User.find_by(email: 'al@alessandralima.com ')
  ale.site_owner = true
  ale.save
end

puts 'Owner user created'
puts "Current items: #{Arranjo.count}"
if Arranjo.count > 0
  puts 'destroying all previous records'
  Arranjo.destroy_all
  puts 'all previous records records destroyed'
  puts "Current items: #{Arranjo.count}"
end

csv_text = File.read(Rails.root.join('lib', 'seeds', 'data_seed.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
puts 'creating new records'


csv.each do |row|
  arranjo = Arranjo.new
  arranjo.name = row['name']
  arranjo.description = row['description']
  arranjo.department = row['department']
  arranjo.dimentions = row['dimentions']
  arranjo.hastes = row['hastes']
  arranjo.composition = row['composition']
  arranjo.available_membership = row['available_membership']
  arranjo.old_url_photo = row['old_url_photo']
  arranjo[:photo] = row['photo']
  arranjo.save
  counter += 1
  puts "#{counter} total arranjos created"
end

puts '======= TASK Completed========'
puts "Total Arranjos: #{Arranjo.count}"
