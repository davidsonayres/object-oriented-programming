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
end
