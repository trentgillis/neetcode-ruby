# XOR Solution
# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  result = nums.size
  (0...nums.size).each do |index|
    result ^= index
    result ^= nums[index]
  end

  result
end

# Sum Solution
# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  (0..nums.size).sum - nums.sum
end
