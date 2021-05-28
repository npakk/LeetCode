def remove_duplicates(nums)
  nums.uniq!
  return nums.length
end
p remove_duplicates([1,1,2])
