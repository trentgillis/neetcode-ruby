# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  res = 0
  nums.each { |n| res = res ^ n }
  res
end
