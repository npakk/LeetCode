def is_valid(s)
  return false if s.size.odd?
  open = ['(', '[', '{']
  stack = []
  s.chars.each do |v|
    if open.include?(v)
      stack << v
    else
      case v
      when ")"
        return false unless stack.pop == "("
      when "}"
        return false unless stack.pop == "{"
      when "]"
        return false unless stack.pop == "["
      end
    end
  end
  stack.size == 0
end
p is_valid("([[")
p is_valid("()")
p is_valid("()[]{}")
p is_valid("(]")
p is_valid("([)]")
p is_valid("{[]}")
