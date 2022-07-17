# @param {Integer[]} nums
# @return {Integer[]}
def product_except_self(nums)
  result = [1] * nums.size

  prefix = 1
  0.upto(nums.size - 1) do |i|
    result[i] *= prefix
    prefix *= nums[i]
  end

  postfix = 1
  (nums.size - 1).downto(0) do |i|
    result[i] *= postfix
    postfix *= nums[i]
  end

  result
end
