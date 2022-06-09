# @param {String} s
# @return {Boolean}
def is_palindrome(s)
  s = s.gsub(/[^a-zA-Z0-9]/, '').downcase
  l, r = 0, s.size - 1
  while l < r
    return false unless s[l] == s[r]
    r -= 1
    l += 1
  end
  
  true
end
