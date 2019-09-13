# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  count = 0
  arr.each { |a| count += a }
  
  return count
end

def max_2_sum arr
  large1 = -1/0
  large2 = -1/0
  for i in arr
    if arr[i] >= large1
      large2 = large1
      large1 = arr[i]
    elsif arr[i] > large2
      large2 = arr[i]
    end
  end
  
  return large1 + large2
end

def sum_to_n? arr, n
  for i in arr
    for j in arr
      sum = arr[i] + arr[j]
      if i != j and sum == n
        return true
      end
    end
  end
end

# Part 2

def hello(name)
  greeting = "Hello, "
  fullGreeting = greeting + name
  return fullGreeting
end

def starts_with_consonant? s
  lower = s.downcase
  letters = lower.split
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
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
