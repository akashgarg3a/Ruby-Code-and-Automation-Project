class Node
  attr_accessor :left, :right, :val
  def initialize(val)
    @val = val
  end

  def to_s
    s = left.nil?() ? left.val.to_s : ".";
    s += " <- " + val.to_s + " -> "
    s += right.nil?() ? right.val.to_s : ".";
    return s;
  end
end

def display(node)
  if(node.nil?())
    return
  end
  puts node
  display(node.left);
  display(node.right);
end

node = [];
node[0] = Node.new(10);
node[1] = Node.new(20);
node[2] = Node.new(30);
node[3] = Node.new(40);
node[4] = Node.new(50);
node[5] = Node.new(60);
node[6] = Node.new(70);

node[0].left = node[1];
node[0].right = node[2];
node[1].left = node[3];
node[1].right = node[4];
node[2].left = node[5];
node[2].right = node[6];

head = node[0]

display(head);