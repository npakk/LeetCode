def longest_common_prefix(strs)
  return '' if strs.empty?
  min, max = strs.minmax
  idx = min.size.times{ |i| break i if min[i] != max[i] }
  min[0...idx]
end
p longest_common_prefix(["flower", "flow", "flight"])
p longest_common_prefix(["dog","racecar","car"])
