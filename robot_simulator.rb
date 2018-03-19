=begin
A robot factory's test facility needs a program to verify robot movements.


methods: turn_right, turn_left, advance

front = North or South or East or West

position :{x,z}  Coordinates increase to north and east.



Turn right
Advance twice
Turn left
Advance once
Turn left yet again

  verify robots new position
=end

class Robot
  def initialize
    @position = [0,0]
    @front    = :north
  end

  # starting coordinates and bearing 
  def place_at(x, y, direction)
    @position = [x.to_i, y.to_i]
    @front = case direction.downcase  
      when "north"  then :north
      when "south"  then :east
      when "east"   then :south
      when "west"   then :west
      end
    puts "position is: #{@position} direction is #{@front}"
  end

  
  # Instructions enter a letter-string like :RAALAL 
  def instruct(commands)
    move = commands.upcase.chars

    move.each do |letter|
      case letter 
      when "R" then turn_right
      when "L" then turn_left
      when "A" then advance
      end 
    end #end .each
    puts "position is: #{@position} direction is #{@front}"
  end #end instruct


  def turn_left
    case @front
    when :north then @front = :west
    when :west  then @front = :south
    when :south then @front = :east
    when :east  then @front = :north
    end
  end

  def turn_right
    case @front
    when :north then @front = :east
    when :west  then @front = :north
    when :south then @front = :west
    when :east  then @front = :south
    end
  end

  def advance
    case @front
    when :north then @position[0] += 1
    when :west  then @position[1] -= 1
    when :south then @position[0] -= 1
    when :east  then @position[1] += 1
    end
  end

  def where
     print  @position
     puts   @front
     return @position + @front

  end
  
end #robot end

# r = Robot.new
# r.place_at(7,3, "north")
# r.instruct("RAALAL")


