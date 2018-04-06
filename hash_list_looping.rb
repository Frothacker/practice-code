# list of nodes that runs both ways

class Hashlist 
  def initialize
    @nodes = {0 => { :id => "HEAD", :next => 1, :prev => 0 }}
    @pointer = 0
  end


  def add_node(x)
    # delete TAIL node
    @nodes = @nodes.delete_if do |key,vhash|
      vhash[:id] == "TAIL"
    end
    # create x nodes
    x.times do 
      @nodes.merge!({ @nodes.length => {:id => @nodes.length, :next => (@nodes.length + 1), :prev => (@nodes.length - 1)} }) 
    end 
    # make HEAD node point to TAIL node id 
    @nodes[0][:prev] = @nodes.length
    # add Tail node
    @nodes.merge!({@nodes.length => { :id => "TAIL", :next => 0, :prev => (@nodes.length-1)}})
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
l.add_node(4)
l.next


=end

