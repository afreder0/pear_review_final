# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'dishes.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   t = Dish.new
#   t.dish_name = row['Dish']
#   t.category = row['category']
#   t.save
#   puts "#{t.dish_name}, #{t.category} saved"
# end
#
# puts "There are now #{Dish.count} rows in the dish table"

# 2. Read in a CSV File
# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'resto.csv'))
# puts csv_text

# 3. Parse the CSV
# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'resto.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# puts csv

# 4. Looping through the parsed data
# require 'csv'
#
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'resto.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# csv.each do |row|
#   puts row.to_hash
# end


# 5. Create a database object from each row
require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'resto.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Restaurant.new
  t.cover_image = row['image']
  t.name = row['name']
  t.price = row['price']
  t.zip = row['zip']
  t.state = row['state']
  t.street = row['street']
  t.city = row['city']
  t.phone = row['phone']
  t.save
  puts "#{t.name}, #{t.city} saved"
end

puts "There are now #{Restaurant.count} rows in the transactions table"
