# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums_map = {}
  nums.each_with_index do |num, i|
    diff = target - num
    if nums_map.include?(diff)
      return [nums_map[diff], i]
    end
    
    nums_map[num] = i
  end
end
