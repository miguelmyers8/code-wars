
# that takes as a parameter an array of numbers
# represented as strings and outputs an array of numbers.

def to_number_array(string_array)
string_array.map {|x| x.to_i }
i = 0
string_array.map {|x| x + i += 0.1}
end

#######
#Finish the solution so that it returns the sum of all
#the multiples of 3 or 5 below the number passed in.

def solution(number)
n = 0..number
a = []
for i in n
 if i % 3 == 0 || i % 5 == 0
 a = a.push(i)
 end
 end
s = 0
# a.pop
a.each {|x| s += x}
s
end

##########
#You need to write a function that reverses the words in a
#given string. If this is not clear enough, here are some examples:

def reverse(string)
s = string.split.reverse.join(" ")
  #your code here
end


############
# The function should take three arguments - operation(string/char),
# value1(number), value2(number). The function
# should return result of numbers
# after applying the chosen operation.
# basic_op('+', 4, 7)         # Output: 11
# basic_op('-', 15, 18)       # Output: -3
# basic_op('*', 5, 5)         # Output: 25
# basic_op('/', 49, 7)        # Output: 7

def basic_op(operator, value1, value2)
value1.send operator, value2
end


################
# Given a string of numbers, you should replace any number 
# below 5 with '0' and any number 5 and above with '1'.
# Return the resulting string.

def fake_bin(s)
s = s.split("")
s = s.map {|x| x.to_i }
s.collect! {|e| (e<5) ? 0 : e || (e>5) ? 1 : e}
s.join
end
