# @param {Integer} n
# @return {Boolean}
def is_happy(n)
  sums_set = Set.new
  
  until sums_set.include?(n)
    sums_set << n
    sum = n.digits.sum { |d| d * d }
    return true if sum == 1
    n = sum
  end
  
  false
end
