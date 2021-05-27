def reverse(x)
  a = x.to_s.include?("-") ? ("-" + x.to_s.reverse).to_i : x.to_s.reverse.to_i
  ((a < -2 ** 31) || (a > 2 ** 31 - 1)) ? 0 : a
end
p reverse(123)
p reverse(-123)
p reverse(120)
p reverse(0)
p reverse(1534236469)
