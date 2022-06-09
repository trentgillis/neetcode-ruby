# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  max_profit = 0
  
  l, r = 0, 1
  while r < prices.size
    l = r unless prices[l] < prices[r]
    current_profit = prices[r] - prices[l]
    max_profit = [max_profit, current_profit].max
    r += 1
  end
  
  max_profit
end
