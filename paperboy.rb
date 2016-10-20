class Paperboy

  attr_reader :earnings

  def initialize(name, experience)
    @name       = name
    @experience = experience
    @earnings   = earnings
  end

  def quota
    if @experience == 0
      return 50
    else
      return 50 + (@experience / 2)
    end
  end

  def deliver(start_address, end_address)
    total_delivered = end_address - start_address
    @experience += total_delivered
    if total_delivered < quota
      return (total_delivered * 0.25) - 2
    elsif total_delivered >= quota
      return (quota * 0.25) + (total_delivered - quota * 0.50)
    end
  end
end
