puts "give me a number greater than 1"
number = gets.chomp.to_i


def romanize_shit (number)
  if number >= 1000
    print 'M' * (number/1000)
  end
  if number == 900
    print 'CM'
    number = number - 900
  elsif number >= 500
    print 'D' * (number % 1000/500)
    number = number - ((number % 1000 / 500) * 500)
    puts "we are here: #{number}"
  end
  if number == 400
    print 'CD'
    number = number - 400
  elsif number >= 100
    print 'C' * (number % 500 / 100)
    number = number - ((number % 500 / 100) * 100)
  end
  if number == 90
    print 'XC'
    number = number - 90
  elsif number >= 50
    print 'L' * (number % 100 / 50)
    number = number - ((number % 100 / 50) * 50)
  end
  if number == 40
    print 'XL'
    number = number - 40
  elsif number >= 10
    print 'X' * (number % 50 / 10)
    number = number - ((number % 50 / 10) * 10)
  end
  if number == 9
    print 'IX'
    number = number - 9
  elsif number >= 5
    print 'V' * (number % 10 / 5)
    number = number - ((number % 10 / 5) * 5)
  end
  if number == 4
    print 'IV'
    number = number - 4
  elsif number > 1
    print 'I' * (number % 5 / 1)
  end
end

romanize_shit(number)