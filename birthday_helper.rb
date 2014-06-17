require 'date'

puts "Give me your name right now!"
reply = gets.chomp.downcase


bday_list = File.open('birthday_data.csv')

bday_hash = Hash.new

bday_list.each do |line|

  lastname,firstname,bday = line.split(',',4)
  name = firstname.downcase + " " + lastname.downcase
  bday_hash ["#{name}"] = "#{bday}"
end

birthdate = bday_hash ["#{reply}"]
year, month, day = birthdate.split('/')
now = Date.today
before = Date.new(year.to_i, month.to_i, day.to_i)
difference_in_days = (now - before).to_i
age = (difference_in_days/365.25).to_i


puts "Hey, #{reply.capitalize}, your birthday is on the " + birthdate.to_s + " and you are " + age.to_s + " old."
