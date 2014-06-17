puts "How manly are you?"
bottles = gets.chomp.to_i

def counting_bottles (bottles)
  puts "#{bottles} of beer on the wall, #{bottles} of beer.  Take one down pass it around, #{bottles.to_i - 1} bottles of beer."
  bottles = bottles.to_i - 1
  if bottles != 0
  counting_bottles (bottles)
  end
end

counting_bottles (bottles)