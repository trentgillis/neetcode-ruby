# Straight forwards logical AND and SHIFT soluion
# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  count = 0
  
  while n > 0
    count += n & 1
    n = n >> 1
  end
  
  count
end

# More tricky but cool logic AND with n-1 solution
# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  count = 0
  
  while n > 0
    n = n & (n - 1)
    count += 1
  end
  
  count
end
