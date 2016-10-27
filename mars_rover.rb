class Rover

  attr_reader :position, :x_coordinate, :y_coordinate, :direction, :name, :plateau_size

  def initialize(name)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction    = direction
    @position     = "#{@x_coordinate} #{@y_coordinate} #{@direction}"
    @name         = name
    @plateau_size = plateau_size
  end

  def move
    if @direction == "N"
      @y_coordinate += 1
    elsif @direction == "S"
      @y_coordinate -= 1
    elsif @direction == "E"
      @x_coordinate += 1
    elsif @direction == "W"
      @x_coordinate -= 1
    end
  end

  def turn_left
    if @direction == "N"
      @direction = "W"
    elsif @direction == "E"
      @direction = "N"
    elsif @direction == "S"
      @direction = "E"
    elsif @direction == "W"
      @direction = "S"
    end
  end

  def turn_right
    if @direction == "N"
      @direction = "E"
    elsif @direction == "E"
      @direction = "S"
    elsif @direction == "S"
      @direction = "W"
    elsif @direction == "W"
      @direction = "N"
    end
  end

  def get_instructions
    puts "Awaiting instructions...\n(L = turn left, R = turn right, M = move)"
    instructions = gets.chomp
    instructions = instructions.split("")

    read_instructions(instructions)
  end

  def read_instructions(instructions)
    # puts "Awaiting instructions...\n(L = turn left, R = turn right, M = move)"
    # instructions = gets.chomp
    # instructions = instructions.split("")
    for i in instructions.each do
      if i == "M" then
        move
      elsif i == "L" then
        turn_left
      elsif i == "R" then
        turn_right
      end
    end
    puts "-------------------------------------"
    puts report_new_position
    puts "-------------------------------------"
  end

  def report_position
    "Mars Rover #{@name} is at #{@x_coordinate} #{@y_coordinate} #{@direction}"
  end

  def report_new_position
    "Mars Rover #{@name} is now at #{@x_coordinate} #{@y_coordinate} #{@direction}"
  end

  def start
    puts "-------------------------------------\n* * * * M A R S * * R O V E R * * * *\n-------------------------------------\n"

    get_plateau
  end

  def get_plateau
    puts "Plateau size:"
    print "\nEnter maximum X coordinate now: "
    plateau_x = gets.chomp
    print "Enter maximum X coordinate now: "
    plateau_y = gets.chomp
    puts "-------------------------------------"
    plateau_size = "(#{plateau_x}, #{plateau_y})"
    @plateau_size = plateau_size

    start_position
  end

  def start_position
    puts "\nWhere is Mars Rover #{@name} right now?"
    print "\nEnter X coordinate now: "
    x_coordinate = gets.chomp.to_i
    print "Enter Y coordinate now: "
    y_coordinate = gets.chomp.to_i
    print "Enter direction now: "
    direction = gets.chomp

    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @direction    = direction

    puts "-------------------------------------"
    get_instructions
  end
end

r1 = Rover.new("Flotsam")
r2 = Rover.new("Jetsam")

r1.start
r2.start_position
