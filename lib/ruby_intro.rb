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
  #verify input is a binary number
  if !!(s.match /[^01]/) or s.empty?
    return false
  end

  #if all values are 0, then it is a multiple of 4.
  if !(s.match /1/)
    return true
  end

  #string must be at least length 3 in order to be a multiple of 4
  if s.length < 3
    return false
  end

  #if the string ends in 00, then it is a multiple of 4
  if !!(s.match /00\Z/)
    return true
  end

  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)

    #check input validity
    if !isbn.is_a?(String) or isbn.empty? or !price.is_a?(Float) or price <= 0
      raise ArgumentError
    end

    @isbn = isbn
    @price = price
  end

  def isbn
    @isbn
  end

  def isbn=(isbn)
    @isbn = isbn
  end

  def price
    @price
  end

  def price=(price)
    @price = price
  end

end
