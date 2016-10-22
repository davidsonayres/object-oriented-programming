class Paperboy

  attr_reader :earnings

  def initialize(name, experience)
    @name       = name
    @experience = experience
    @earnings   = 0
  end

  def quota
      return 50 + (@experience / 2)
    end
  end

  def deliver(start_address, end_address)
    total_delivered = end_address - start_address
    if total_delivered < quota
      money = (total_delivered * 0.25) - 2
    elsif total_delivered >= quota
      money = (quota * 0.25) + (total_delivered - quota) * 0.50
    end
    @experience += total_delivered
    @earnings += money
  end

  def report
    "I'm #{@name}! I've delivered #{@experience} papers and I've earned $#{@earnings} so far!"
  end
end

tommy = Paperboy.new("Tommy", 0)

puts tommy.quota
puts tommy.deliver(101, 160)
puts tommy.earnings
puts tommy.report
