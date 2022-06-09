
class MinStack
    def initialize()
      @stack = []
      @min_stack = []
    end


=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
      min_val = @min_stack.empty? ? val : [val, @min_stack.last].min
      @min_stack.push(min_val)
      @stack.push(val)
    end


=begin
    :rtype: Void
=end
    def pop()
      @stack.pop
      @min_stack.pop
    end


=begin
    :rtype: Integer
=end
    def top()
      @stack.last
    end


=begin
    :rtype: Integer
=end
    def get_min()
      @min_stack.last
      # Alternatively, you can stop tracking min_stack and just call @stack.min here. Using min_stack for lanugage agnostic solution.
    end


end
