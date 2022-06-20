# Memoize Solution
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  def climb_stairs_memo(n, memo)
    return memo[n] if memo.include?(n)
    return 1 if n < 2
    memo[n] = climb_stairs_memo(n - 1, memo) + climb_stairs_memo(n - 2, memo)
    memo[n]
  end
  
  climb_stairs_memo(n, Hash.new)
end

# Bottom up solution
# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  dp = []
  dp[0], dp[1] = 1, 1
  (2..n).each do |i|
    dp[i] = dp[i - 1] + dp[i - 2]
  end
  
  dp[n]
end
