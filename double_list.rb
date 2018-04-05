# list of nodes that runs both ways

class Doublelist 
  def initialize
    @nodes = [{:id => "first", :next => 1,} , { :id =>"last", :prev => 0}]
    @curser = 0
  end


  def add_node(x)
    @nodes.pop
    x.times do 
      @nodes.push({
        :id   => @nodes.count.to_i,
        :next => (@nodes.count+1),
        :prev => (@nodes.count-1)
      })
    end

    @nodes.push({:id=> "last", :prev => @nodes.count-2} )
  end


  def set_curser(x)
    @curser = x
  end


  def show(x)
    puts @nodes[x]
  end


  def next
    if @nodes[@curser][:id] == "last"
      puts "this is last, cannot go futher"
      puts "curser is now #{@curser}"
    else
      @curser = @nodes[@curser][:next]
      show(@curser)
      puts "curser is now #{@curser}"
    end
    return @curser
  end


  def prev
    if @nodes[@curser][:id] == "first"
      puts "this is first, cannot go futher"
      puts "curser is now #{@curser}"
    else
      @curser = @nodes[@curser][:prev]
      show(@curser)
      puts "curser is now #{@curser}"
    end
    return @curser
  end

end # doublelist end




=begin
# # used for irb 


irb
require "./double_list"
l = Doublelist.new
l.add_node(10)
l.show(0)
l.show(1)
l.next
l.next







=end

