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
# @return {Boolean}
def is_balanced(root)
  @is_balanced = true
  
  def dfs(node)
    return 0 unless node
    left, right = dfs(node.left), dfs(node.right)
    @is_balanced = @is_balanced && (left - right).abs <= 1
    1 + [left, right].max
  end
  
  dfs(root)
  @is_balanced
end
