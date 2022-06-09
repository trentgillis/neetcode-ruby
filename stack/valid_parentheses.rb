# @param {String} s
# @return {Boolean}
def is_valid(s)
  stack = []
  close_to_open = {
    '}' => '{',
    ']' => '[',
    ')' => '('
  }.freeze
  
  s.each_char do |char|
    if close_to_open.include?(char)
      if stack and stack.last == close_to_open[char]
        stack.pop
      else
        return false
      end
    else
      stack.push(char)
    end
  end
  
  stack.empty?
end
