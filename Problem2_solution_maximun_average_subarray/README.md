# Maximum Average Subarray

## Solution Approach

The problem involves finding the contiguous subarray with a length of at least \( k \) that has the maximum average value. To solve this efficiently, we utilize the sliding window technique.

### Sliding Window Approach:

1. We start with a window of size \( k \) and calculate its sum.
2. Then, we slide the window one element to the right and update the sum accordingly.
3. At each step, we calculate the average of the current window and keep track of the maximum average found so far.
4. By doing this, we can find the maximum average subarray efficiently with a time complexity of \( O(n) \), where \( n \) is the size of the array.

### Why This Approach:

- The sliding window approach offers an efficient solution with a time complexity of \( O(n) \), which is optimal for this problem.
- It avoids redundant calculations by maintaining a running sum while sliding the window, leading to improved efficiency.

## How to Run

1. Ensure you have Ruby installed on your system. You can download it from [here](https://www.ruby-lang.org/en/downloads/).
2. Clone this repository or download the `maximum_average_subarray.rb` file.
3. Open a terminal and navigate to the directory where the file is located.
4. Run the script using the command `ruby maximum_average_subarray.rb`.
5. Follow the on-screen prompts to input the array of numbers and the value of \( k \).
6. The script will then calculate and output the maximum average based on the provided inputs.

## Example Usage

### Example 1:

**Input:**

```
Enter the numbers separated by spaces:
1 12 -5 -6 50 3
Enter the value of k:
4
```

**Output:**

```
Maximum average: 12.75
```

**Explanation:**

In the given array `[1, 12, -5, -6, 50, 3]`, the subarray `[12, -5, -6, 50]` has the maximum average of \( \frac{12 + (-5) + (-6) + 50}{4} = 12.75 \).

### Example 2:

**Input:**

```
Enter the numbers separated by spaces:
-1 -2 -3 -4 -5
Enter the value of k:
4
```

**Output:**

```
Maximum average: -2.5
```

**Explanation:**

In the given array `[-1, -2, -3, -4, -5]`, the subarray `[-2, -3, -4, -5]` has the maximum average of \( \frac{(-2) + (-3) + (-4) + (-5)}{4} = -2.5 \).

---