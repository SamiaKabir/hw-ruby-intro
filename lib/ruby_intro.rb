# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  val= 0
  for i in 0...arr.length
      val= val+ arr.at(i)
  end
  puts val
return val
end
sum [1,1,1]

def max_2_sum arr
    val=0
    if arr.length>=2
        arr.sort!
        for i in arr.length-2...arr.length
            val= val+ arr.at(i)
        end
        elsif arr.length==1
        val= arr.at(0)
        else
        val=0
    end
    puts val
    return val
end

def sum_to_n? arr, n
    val=false
    summation=0
    
    for i in 0...arr.length
        for j in 0...arr.length
            if j!=i
                summation= arr.at(i)+arr.at(j)
                if summation==n
                    val=true
                    break
                end
            end
        end
    end
    puts val
    return val
end

# Part 2

def hello(name)
    str= "Hello"
    puts str+ ', '+ name
    return str+', '+name
end

def starts_with_consonant? s
    val=false
    # !("AEIOUaeiou".include?(s[0]))
    if s.length==0
        val=false
        elsif (s[0] =~ /[^a-zA-Z0-9]/)
        val=false
        elsif  !( s[0] =~ /[aeiouAEIOU]/)
        val=true
        else
        val=false
    end
    return val
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

#class BookInStock
## YOUR CODE HERE
#end
