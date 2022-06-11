# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def diameter_of_binary_tree(root)
  @diameter = 0
  def dfs(node)
    return -1 unless node
    left, right = dfs(node.left), dfs(node.right)
    @diameter = [@diameter, 2 + left + right].max
    1 + [right, left].max
  end
  
  dfs(root)
  @diameter
end
