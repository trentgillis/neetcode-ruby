# Brute Force Solution
# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  result = []
  (0..n).each do |num|
    bin = num.to_s(2)
    result << count_ones(bin)
  end

  result
end

def count_ones(bin)
  count = 0

  puts "Start bin: #{bin}"

  until bin.empty?
    count += bin.to_i & 1
    bin = bin.chop
  end

  count
end
