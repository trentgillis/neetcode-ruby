# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
  result = 0

  32.times do
    result = (result << 1) + (n & 1)
    n >>= 1
  end

  result
end
