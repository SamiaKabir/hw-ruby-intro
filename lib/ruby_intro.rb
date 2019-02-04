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
    if s.length==0
        val=false
        elsif (s=~ /[^01]/)
        return false
        else
        val=s.to_i(2)
        puts val
        if val%4==0
            return true
            else
            return false
        end
    end
end



# Part 3

class BookInStock
    # constructor
    def initialize(isbn,price)
        if isbn.length==0 or price<=0
            raise ArgumentError.new("Arguments are not in correct form")
        end
        @isbn=isbn
        @price=price
    end
    
    def isbn     #getter method
        @isbn
    end
    
    def isbn=(isbn) #setter method
        @isbn = isbn
    end
    
    
    def price #getter method
        @price
    end
    
    def price=(price) #setter method
        @price = price
    end
    
    def price_as_string
        @price= '%.2f' % @price
        price_str= @price.to_s
        new_price_str= '$'+ price_str
    end
    
end


