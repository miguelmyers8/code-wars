
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
