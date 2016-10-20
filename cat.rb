class Cat
  attr_accessor :meal_time

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if meal_time <= 12
      puts "#{meal_time} AM"
    else
      time = meal_time - 12
      puts "#{time} PM"
    end
  end
end

jasper = Cat.new("Jasper", "chicken", 9)
prima  = Cat.new("Prima", "salmon", 17)

puts prima.eats_at
