# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end

# Iterative solution
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
  merged = ListNode.new
  tail = merged
  
  while list1 and list2
    if list1.val <= list2.val
      tail.next = list1
      list1 = list1.next
    else
      tail.next = list2
      list2 = list2.next
    end
    
    tail = tail.next
  end
  
  tail.next = list1 if list1
  tail.next = list2 if list2
  
  merged.next
end
