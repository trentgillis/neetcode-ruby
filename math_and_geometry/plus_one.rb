# Elegant Ruby Solution
# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  ((digits.join.to_i) + 1).to_s.chars.map(&:to_i)
end

# Generic Solution
# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  digits = digits.reverse
  i = 0
  
  loop do
    if i < digits.size
      if digits[i] == 9
        digits[i] = 0
      else
        digits[i] += 1
        break
      end
    else
      digits.append(1)
      break
    end
    
    i += 1
  end
  
  digits.reverse
end
