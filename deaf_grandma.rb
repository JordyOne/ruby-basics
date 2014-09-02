puts "Tell me something grandson..."
counter = 0

while true
  print '> '
  something = gets.chomp

  if something == "GOODBYE"
    counter += 1
    if counter >= 3
      puts "goodbye, thanks for stopping bye."
      break
    end
  elsif something == something.upcase
    puts "NO, NOT SINCE " + (1930 + rand(20)).to_s + "!!!"
    break
  else
    puts "HUH?! SPEAK UP SONNY!"
  end
end