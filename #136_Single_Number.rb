# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  nums.first if nums.size == 1
  nums.each do |n|
    return n if nums.count(n) == 1
  end
end
