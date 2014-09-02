# puts "give me a number greater than 1"
# number = gets.chomp.to_i

roman_numeral = {
    4 => {
        "1" => 'M'
    },
    3 => {
        "9" => 'CM',
        "5" => 'D',
        "4" => 'CD',
        "1" => 'C'
    },
    2 => {
        "9" => 'XC',
        "5" => 'L',
        "4" => 'XL',
        "1" => 'X'
    },
    1 => {
        "9" => 'IX',
        "5" => 'V',
        "4" => 'IV',
        "1" => 'I'
    }
}


number = "2345"

  num_length = number.length

number.each_char do |digit|
  romanized = romanized + #{(roman_numeral[num_length][digit])}
  num_length -= 1
  print romanized
end
