# When done, submit this entire file to the autograder.

# Part 1

def sum arr  
  output = 0
  arr.each do |val| 
    output += val
  end
  return output
end

def max_2_sum arr
  #edge cases
  if arr.empty?
    return 0
  end
  
  if arr.length == 1
    return arr[0]
  end

  sarr = arr.sort()
  return sarr[-1] + sarr[-2]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
