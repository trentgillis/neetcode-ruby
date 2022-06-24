# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  max_sum, curr_total = nums[0], 0
  nums.each do |num|
    curr_total += num
    max_sum = [max_sum, curr_total].max
    curr_total = 0 if curr_total < 0
  end
  
  max_sum
end
