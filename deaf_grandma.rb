

while true
  puts "Tell me something grandson..."
  print '> '
  something = gets.chomp
  if something == something.upcase
    puts "NO, NOT SINCE " + (1930 + rand(20)).to_s + "!!!"
    break
  else
    puts "HUH?! SPEAK UP SONNY!"
  end
end