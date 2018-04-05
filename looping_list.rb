# list of nodes that runs both ways

class Doublelist 
  def initialize
    @nodes = []
    @curser = 0
  end


  def add_node(x)
    x.times do 
      @nodes.push({
        :id   => @nodes.count.to_i+1,
        :next => (@nodes.count+2),
        :prev => (@nodes.count)
      })
    end
    @nodes.unshift({:id => "first", :next => 1, :prev => @nodes.count})
    @nodes << ({:id=> "last", :prev => (@nodes.count-2), :next => 0})
  end


  def set_curser(x)
    @curser = x
  end


  def show(x)
    puts @nodes[x]
  end


  def next
    @curser = @nodes[@curser][:next]
    show(@curser)
    puts "curser is now #{@curser}"
    return @curser
  end


  def prev
    @curser = @nodes[@curser][:prev]
    show(@curser)
    puts "curser is now #{@curser}"
    
    return @curser
  end

end # doublelist end




=begin
# # used for irb 


irb
require "./looping_list"

l = Doublelist.new
l.add_node(4)
l.show(0)
l.show(1)
l.show(2)
l.show(3)
l.next
l.next
l.next
l.next
l.next
l.next
l.prev
l.prev
l.prev
l.prev
l.prev
l.prev




=end

