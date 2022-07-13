# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[]}
def top_k_frequent(nums, k)
  num_counts = {}
  nums.each do |num|
    num_counts[num] = num_counts.fetch(num, 0) + 1
  end

  num_freqs = Array.new(nums.size + 1) { [] }
  num_counts.each do |num, count|
    num_freqs[count] << num
  end

  result = []
  num_freqs.reverse.each do |freq|
    next if freq.empty?

    freq.each do |f|
      result << f

      return result if result.size == k
    end
  end
end
