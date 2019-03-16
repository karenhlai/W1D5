class PolyTreeNode
  attr_accessor :value, :children, :parent

  def initialize(value, children=[])
    @value = value
    @children = children 
    @parent = nil 
  end 

  #self.parent(node)
  def parent=(node)
    if node.nil?
      @parent = node 
    else 
      @parent.children.delete(self) unless @parent == nil
      @parent = node 
      @parent.children << self unless node.children.include?(self)
    end
  end

  def add_child(child)
    child.parent = self 
  end

  def remove_child(child)
    raise ArgumentError if child.parent.nil?
    child.parent = nil 
  end
end

class Searchable 
  
end 

# def construct_tree
#   puts g = PolyTreeNode.new('g')
#   puts f = PolyTreeNode.new('f')
#   puts e = PolyTreeNode.new('e')
#   puts d = PolyTreeNode.new('d')
#   puts b = PolyTreeNode.new('b', ['d', 'e'])
#   puts c = PolyTreeNode.new('c', ['f', 'g'])
#   puts a = PolyTreeNode.new('a', ['b', 'c'])
# end
