# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  count = 0
  arr.each { |a| count += a }
  
  return count
end

def max_2_sum arr
  large1 = -1.0/0
  large2 = -1.0/0
  for i in arr
    if i >= large1
      large2 = large1
      large1 = i
    elsif i > large2
      large2 = i
    end
  end
  
  if large2 > (-1.0/0)
    return large1 + large2
  elsif large1 > (-1.0/0)
    return large1
  else
    return 0
  end
end

def sum_to_n? arr, n
  for i in arr
    for j in arr
      sum = i + j
      if i != j and sum == n
        return true
      end
    end
  end
  
  return false
end

# Part 2

def hello(name)
  greeting = "Hello, "
  fullGreeting = greeting + name
  return fullGreeting
end



def starts_with_consonant? s
  # Handle empty case
  if s[0] == nil
    return false
  end
  
  lower = s.downcase
  letters = lower.split("")
  letter = letters[0]
  
  if letter < 'a' or letter > 'z'
    return false
  end
  
  if letter == 'a' or letter == 'e' or letter == 'i' or letter == 'o' or letter == 'u'
    return false
  end
   
  return true
end



def binary_multiple_of_4? s
  charArray = s.split("")
  
  charArray.each do |digit|
    if (digit != "0") and (digit != "1")
      return false
    end
  end
  
# Handle 0 case
  if charArray.length == 1 and charArray[0] == '0'
    return true
  end
  
  last2 = charArray.last(2)
  
  if (last2[0] == '0') and (last2[1] == '0')
    return true
  else
    return false
  end
end



# Part 3

class BookInStock
  def initialize (isbn_string, prc)
    @isbn = isbn_string
    @price = prc
    
    if @isbn[0] == nil
      raise ArgumentError, 'ISBN is empty string'
    end
    
    if @price <= 0
      raise ArgumentError, 'Price <= 0'
    end
  end
  
  # Getters
  def isbn
    @isbn
  end
  
  def price
    @price
  end
  
  # Setters
  def isbn=(isbn)
    @isbn = isbn
  end
  
  def price=(price)
    @price = price
  end
  
  # Price as string
  def price_as_string
    return "$%.2f" % [@price]
  end
end
