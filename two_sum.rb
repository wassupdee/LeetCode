# Brute Force
def two_sum(nums, target)
  (0..nums.length-1).each do |i|
    (i+1..nums.length-1).each do |j|
      return [i, j] if nums[i] + nums[j] == target
    end
  end
end

# hash table
def two_sum(nums, target)
  hash = {}
  nums.each_with_index do |number, index|
    if hash[target - number]
      return [hash[target - number], index]
    else
      hash[number] = index
    end
  end
end
