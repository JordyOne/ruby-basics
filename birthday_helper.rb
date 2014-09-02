require 'date'
require 'csv'

file = CSV.read('birthday_data.csv', headers: true)

puts "What is your full name?"
reply = gets.chomp.downcase

file.each do |row|
  full_name = "#{row["first_name"]} #{row["last_name"]}".downcase
  if reply == full_name
    age = Date.today - Date.strptime(row["date_of_birth"], "%Y/%m/%d")
    age = (age/365.25).to_i.to_s
    p "#{row["first_name"]} #{row["last_name"]}: #{age} years old."
  end
end
