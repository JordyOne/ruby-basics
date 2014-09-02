class Robot
  def initialize(name)
    @name = name
  end

  def beep
    "beep beep my name is #{@name}"
  end
end
class Human
  def initialize (name, hungry)
    @name = name
    @hungry = hungry
  end

  def is_hungry?
    @hungry
  end
  def feed
    @hungry = false
    puts "thanks for feeding me"
  end
end

def beep
  "Hey! I'm not a rob"
end

robot_hash = {
    "name" => "Robin"
}

robot_1 = Robot.new("Bob")
robot_2 = Robot.new("Steve")


jeff = Human.new("Frank", true)

puts "beep beep my name is #{robot_hash["name"]}"


puts robot_1.beep
puts robot_2.beep
puts jeff.is_hungry?
jeff.feed
puts jeff.is_hungry?