# list of nodes that runs both ways

class Hashlist 
  def initialize
    @nodes = {}
    @pointer = 0
  end


  def add_node(x)
    @nodes.merge!({0 => { :id => "first", :next => 1, :prev => 0}})
    x.times do 
      @nodes.merge!({ @nodes.length => {:id => @nodes.length, :next => (@nodes.length + 1), :prev => (@nodes.length - 1)} }) 
    end 

    @nodes[0][:prev] = @nodes.length

    @nodes.merge!({@nodes.length => { :id => "last", :next => 0, :prev => (@nodes.length-1)}})
    puts @nodes
  end

  def next 
    @pointer = @nodes[@pointer][:next]
    puts @nodes[@pointer]
    puts @pointer
  end

  def prev 
    @pointer = @nodes[@pointer][:prev]
    puts @nodes[@pointer]
    puts @pointer
  end
end # Hashlist end



=begin

 used for irb 


irb
require "./hash_list_looping"
l = Hashlist.new
l.add_node(5)
l.next


=end

