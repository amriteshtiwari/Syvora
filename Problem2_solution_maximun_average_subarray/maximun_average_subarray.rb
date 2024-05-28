def find_max_average(nums, k)
  left = 0
  right = k - 1

  current_sum = nums[0, k].sum
  max_sum = current_sum

  while right < nums.length - 1
    right += 1
    current_sum += nums[right] - nums[left]
    max_sum = [max_sum, current_sum].max
    left += 1
  end

  max_sum.to_f / k
end

puts "Enter the numbers separated by spaces:"
nums = gets.chomp.split.map(&:to_i)

puts "Enter the value of k:"
k = gets.chomp.to_i

puts "Maximum average: #{find_max_average(nums, k)}"
