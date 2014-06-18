answer = nil
bottles = nil


def counting_bottles (bottles)
  puts "#{bottles} of beer on the wall, #{bottles} of beer.  Take one down pass it around, #{bottles.to_i - 1} bottles of beer."
  bottles = bottles.to_i - 1
  if bottles != 0
    sleep(0.5)
    counting_bottles (bottles)
  end
end

def be_specific (answer)
  puts "I want to sing you a song, where should I start?"
  answer = gets.chomp
  bottles = answer.to_i
  while true
    if !answer.empty?
      answer_arr = answer.split(/ /)
      if answer_arr[0].downcase == 'sing'
        if answer_arr[1].to_i > 0 && answer_arr[1].to_i < 100
          bottles = answer_arr[1].to_i
          counting_bottles (bottles)
          break
        else
          puts "The number has to be greater than 0 and less than 100."
          be_specific (answer)
        end
      else
        puts "I must have forgotten to tell you, you gotta say \"sing\"..."
        be_specific (answer)
      end
    end
  end
end

be_specific (answer)