# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search(nums, target)
  l, r = 0, nums.size - 1
  while l <= r
    m = (l + r) / 2
    next l = m + 1 if nums[m] < target
    next r = m - 1 if nums[m] > target
    return m if nums[m] == target
  end
  
  -1
end
