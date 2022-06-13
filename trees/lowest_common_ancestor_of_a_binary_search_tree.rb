# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {TreeNode} p
# @param {TreeNode} q
# @return {TreeNode}
def lowest_common_ancestor(root, p, q)
  current_node = root
  
  while current_node
    if p.val < current_node.val && q.val < current_node.val
      current_node = current_node.left
    elsif p.val > current_node.val && q.val > current_node.val
      current_node = current_node.right
    else
      return current_node
    end
  end
end
