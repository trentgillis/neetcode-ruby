# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  heap = MaxHeap.new(stones)
  
  while heap.size > 1
    first_stone = heap.pop
    second_stone = heap.pop
    
    if first_stone > second_stone
      heap.push(first_stone - second_stone)
    end
  end
  
  return heap.next unless heap.empty?
  0
end
