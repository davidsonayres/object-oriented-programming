class Person
  def initialize(name)
    @name = name
  end
  def greeting
    puts "Hi, my name is #{@name}."
  end
end

class Student < Person
  def learn
    puts "I get it!"
  end
end

class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

chris     = Instructor.new("Chris")
christina = Student.new("Christina")

puts chris.greeting
puts christina.greeting

puts chris.teach
puts christina.learn

puts christina.teach
# this doesn't work because the instance method teach can only be applied to instances within the Instructor class
