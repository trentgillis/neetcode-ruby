# Memoized Solution
# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  @cost = cost
  
  def min_cost_memo(i, memo)
    return memo[i] if memo.include?(i)
    return @cost[i] if i < 2
    memo[i] = @cost[i] + [min_cost_memo(i - 1, memo), min_cost_memo(i - 2, memo)].min
  end
  
  [min_cost_memo(cost.size - 1, Hash.new), min_cost_memo(cost.size - 2, Hash.new)].min
end

# Bottum Up Solutio
# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)
  dp = []
  cost.reverse.each_with_index do |c, i|
    next dp[i] = c if i < 2
    dp[i] = c + [dp[i - 1], dp[i - 2]].min
  end
  
  [dp[cost.size - 1], dp[cost.size - 2]].min
end
