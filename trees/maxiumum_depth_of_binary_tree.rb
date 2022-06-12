# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end

# Recursive DFS
# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  return 0 unless root 
  return 1 + [max_depth(root.left), max_depth(root.right)].max
end

# Iterative DEF (in order taversal)
# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  return 0 unless root
  
  maximum_depth = 0
  stack = [[root, 1]]
  while !stack.empty?
    node, depth = stack.pop
    stack.push([node.left, depth + 1]) if node.left
    stack.push([node.right, depth + 1]) if node.right    
    maximum_depth = [maximum_depth, depth].max
  end
  
  maximum_depth
end

# BFS
# @param {TreeNode} root
# @return {Integer}
def max_depth(root)
  return 0 unless root 
  depth = 0
  queue = Queue.new([root])
  while !queue.empty?
    (0..queue.size - 1).each do
      popped = queue.pop
      queue << popped.left if popped.left
      queue << popped.right if popped.right
    end
    
    depth += 1
  end
  
  depth
end
