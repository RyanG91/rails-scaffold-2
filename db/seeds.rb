# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'customers.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Customers.new
  t.name = row['name']
  t.address = row['address']
  t.phone = row['phone']
  t.email = row['email']
  t.balance = row['balance']
  puts row.to_hash
end

# https://gist.github.com/arjunvenkat/1115bc41bf395a162084
