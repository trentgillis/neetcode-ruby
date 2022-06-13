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
# @param {TreeNode} sub_root
# @return {Boolean}
def is_subtree(root, sub_root)
  return true unless sub_root
  return false unless root
  
  if same_tree(root, sub_root)
    return true
  end
  
  is_subtree(root.left, sub_root) || is_subtree(root.right, sub_root)
end

def same_tree(p, q)
  return true if p.nil? && q.nil?
  
  if !p.nil? && !q.nil? && p.val == q.val
    return same_tree(p.left, q.left) && same_tree(p.right, q.right)
  end
  
  false
end
