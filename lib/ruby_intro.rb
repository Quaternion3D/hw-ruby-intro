# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum = 0
  for item in arr
    sum += item
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.size == 0
    return 0
  elsif arr.size == 1
    return arr[0]
  else
    arr.sort! { |x,y| y <=> x }
    return arr[0] + arr[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.size == 0
    return false
  else
    a = arr.delete_at(0)
    for b in arr
      if a + b == n
        return true
      end
    end
    return sum_to_n?(arr, n)
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.size == 0
    return false
  else
    return /[[:alpha:]]/.match(s[0]) != nil && /[aeiouAEIOU]/.match(s[0]) == nil 
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HER
  if s.length > 0 && s !~ /[^01]/ && s.to_i(2) % 4 == 0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.length == 0 || price <= 0
      raise ArgumentError, "ISBN is empty or price <= 0"
    else
      @isbn = isbn
      @price = price
    end
  end
  
  def isbn
    @isbn
  end
  
  def price
    @price
  end

  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price=(new_price)
    @price = new_price
  end
  
  def price_as_string
    "$#{'%.02f' % @price}" #two decimals
  end
end
