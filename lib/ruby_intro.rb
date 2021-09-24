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
  #edge cases
  if arr.empty? or arr.length == 1
    return false
  end

  #Use hash table to compare values in the array
  sumTable = Hash.new
  arr.each_with_index do |val, index|
    sumTable[n - val] = index
  end

  arr.each_with_index do |val, index|
    if sumTable.has_key?(val) and sumTable[val] != index
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  return !!(s.match /\A[^\W0-9aeiouAEIOU]/)
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
