# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
  anagram_groups = Hash.new { |h, k| h[k] = [] }

  strs.each do |str|
    char_count = [0] * 26
    str.chars.each do |char|
      char_count[char.ord - 'a'.ord] += 1
    end

    anagram_groups[char_count] << str
  end

  anagram_groups.values
end