# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end

# Iterative Solution
# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  prev = nil
  while head
    next_node = head.next
    head.next = prev
    prev = head
    head = next_node
  end
  
  prev
end

# @param {ListNode} head
# @return {ListNode}
def reverse_list(head)
  if not head
    return nil
  end
  
  new_head = head
  if head.next
    new_head = reverse_list(head.next)
    head.next.next = head
  end
  head.next = nil
  
  new_head
end
