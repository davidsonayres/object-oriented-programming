class Cat
  attr_accessor :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if meal_time <= 12
      return meal_time.to_s + "AM"
    else
      time = meal_time - 12
      return time.to_s + "PM"
    end
  end

  def meow
    "Meow name is #{@name} and meow eat #{@preferred_food} at #{eats_at} and I guess also all other times too, meow!"
  end

end

jasper = Cat.new("Jasper", "chicken", 9)
prima  = Cat.new("Prima", "salmon", 17)

puts jasper.meow
puts prima.meow
