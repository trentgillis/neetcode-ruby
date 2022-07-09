# Memoize Solution
# @param {Integer} n
# @return {Integer}
def climb_stairs(num)
  climb_stairs_memo(num, {})
end

def climb_stairs_memo(num, memo)
  return memo[num] if memo.include?(num)
  return 1 if num < 2

  memo[num] = climb_stairs_memo(num - 1, memo) + climb_stairs_memo(num - 2, memo)
end

# Bottom up solution
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  dp = []
  dp[0] = 1
  dp[1] = 1
  (2..n).each do |i|
    dp[i] = dp[i - 1] + dp[i - 2]
  end

  dp[n]
end
