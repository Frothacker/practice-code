=begin
create chair class with variables : colour, brand, status
methods to influence those varabiles: 
set_colour, get_colour & 
set_brand, get_brand & 
sit_down, stand_up.  
=end

class Chair
  def initialize
    @colour = nil
    @brand  = nil
    @status = nil
  end

  def set_colour(paint)
    @colour = paint
    puts    @colour
  end

  def get_colour
    puts    @colour
    return  @colour
  end

  def set_brand(brand)
    @brand = brand
    puts    @brand
  end

  def get_brand
    puts    @brand
    return  @brand 
  end

  def sit_down
    @status = :occupied
    puts    @status
    return  @status
  end

  def stand_up
    @status = :vacant
    puts    @status
    return  @status
  end

  def get_status
    puts    @status
    return  @status
  end

end 






