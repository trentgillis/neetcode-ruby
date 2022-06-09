# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
  if not head
    return false
  end
  
  slow, fast = head, head.next
  while fast and fast.next
    return true if fast == slow
    slow = slow.next
    fast = fast.next.next
  end
  
  false
end
