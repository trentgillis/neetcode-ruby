# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
  s_char_count, t_char_count = Hash.new(0) , Hash.new(0)
  s.each_char { |char| s_char_count[char] += 1 }
  t.each_char { |char| t_char_count[char] += 1 }

  s_char_count == t_char_count
end
