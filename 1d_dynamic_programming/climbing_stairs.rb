# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  one, two = 1, 1
  (2..n).each do
    temp = one
    one = one + two
    two = temp
  end
  
  one
end
