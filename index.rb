# You will be given a string (x) featuring a cat 'C'
# and a mouse 'm'. The rest of the string will be made up of '.'.
# You need to find out if the cat can catch the mouse
# from it's current position. The cat can jump three characters. So:
# C.....m returns 'Escaped!' <-- more than three characters between
# C...m returns 'Caught!' <-- as there are three characters between
# the two, the cat can jump.
def cat_mouse(x)
 p x = x.split("")
 p f = x.shift
   l = x.pop
if x.length > 3
  p "Escaped!"
else
  p "Caught!"
 end
end
###########################
###########################



# Given an array (x)
# you need to calculate the Paul Misery Score.
# The values are worth the following points:

# kata = 5
# Petes kata = 10
# life = 0
# eating = 1

# The Misery Score is the total points gained from the array.
# Once you have the total,
# return as follows:

# <40 = 'Super happy!'
# <70 >=40 = 'Happy!'
# <100 >=70 = 'Sad!'
# >=100 = 'Miserable!'


def paul(x)
arr = [ ]
x.collect do |x|
  if x== "kata"
      arr.push(5)
  elsif x == "Petes kata"
      arr = arr.push(10)
  elsif x == "life"
     arr =  arr.push(0)
  else
      p arr = arr.push(1)
  end
end
p f = (arr.inject(:+))
  if f < 40
   p "Super happy!"
  elsif f < 70 && f >= 40
  p "Happy!"
  elsif f < 100 && f >= 70
  p "Sad!"
  elsif f >= 100
  p "Miserable!"
end

 end
#########################
#########################



# An isogram is a word that has no repeating letters,
# consecutive or non-consecutive.
# Implement a function that determines
#  whether a string that contains only letters is an isogram.
# Assume the empty string is an isogram. Ignore letter case.


def is_isogram(s)
arr = [ ]
b = "a".."z"
b.map do |x| p arr << s.downcase.split("").count(x)
end
arr.include?(2) || arr.include?(3) ? false : true
end


#[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
#Return an array,
# where the first element is the count
# of positives numbers and the second
# element is sum of negative numbers.


def count_positives_sum_negatives(lst)

arr = [ ]
p b = lst.select(&:positive?).count
p c = lst.select(&:negative?).inject(:+).to_i
arr.push(b,c)
end


#this is undone
# You will be given an array which will include
# both integers and characters.
# Return an array of length 2 with a[0] representing the mean
# of the ten integers as a floating point number.
# There will always be 10 integers and 10 characters.
# Create a single string with the characters and
# return it as a[1] while maintaining the original order.

def mean(lst)
lst
p b = lst.clone
lst.keep_if { |v| v =~ /[0,1,2,3,4,5,6,7,8,9,0 ]/ }
b.keep_if { |v| v =~ /[a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z]/ }
p ar = [ ]
p  k = lst.map(&:to_i).reduce(0, :+)
p k = k / lst.size.to_f
p b
p arr = ar<< b.join("")
p arr = ar<< k
p arr.reverse
# this kicked my ass
end




#
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

##########################
# I love you, a little , a lot, passionately ... not at all
# Your goal in this kata is to determine which phrase
# the girls would say for a flower of a given
# number of petals, where nb_petals > 0.
def how_much_i_love_you(n)
f = ["I love you",
  "a little",
  "a lot",
  "passionately",
  "madly",
  "not at all"]*n
f[n-n+n-1]
end



#########################
#Input: If you can read

#Output: Indian Foxtrot Yankee Oscar Uniform Charlie
#Alfa November Romeo Echo Alfa Delta
def to_nato(words)
n = words.downcase
n = n.split("")
hash = { "a"=>"Alfa","b"=>"Bravo","c"=>"Charlie","d"=>"Delta","e"=>"Echo", "f"=>"Foxtrot", "g"=>"Golf", "h"=>"Hotel", "i"=>"India", "j"=>"Juliett", "k"=>"Kilo","l"=>"Lima", "m"=>"Mike", "n"=>"November", "o"=>"Oscar", "p"=>"Papa", "q"=>"Quebec", "r"=>"Romeo", "s"=>"Sierra", "t"=>"Tango", "u"=>"Uniform", "v"=>"Victor", "w" =>"Whiskey", "x"=>"Xray", "y"=>"Yankee", "z"=>"Zulu", "!" => "!", "?" => "?", "." => "."}
n = n -[" ", nil]
n = n.map {|x| p hash[x] }
n.join(" ")
#hash[n]
end


##########################
# Write a function that takes an (unsigned) integer as input,
# and returns the number of bits that are equal
# to one in the binary representation of that number.
#
# Example: The binary representation of 1234
# is 10011010010, so the function should
# return 5 in this case
def count_bits(n)
n = n.to_s(2)
n = n.split("")
n = n.map{|x| x.to_i}
n.inject(:+)
end

#############################
#convert array of numbers to binary
def binary_array_to_number(arr)
  arr.join("").to_i(2)
end

###############################
# Remove a exclamation mark from
# the end of string. For a beginner kata, you can assume
# that the input data is always a string, no need to verify it.
def remove(s)
p x = s.split("")
if x.last === "!"
z  = x.pop
p x.join("")
elsif x.last != "!"
p x.join("")
end
end

# Write a function to greet a person.
# Function will take name as input and greet the person
# by saying hello.
# Return null/nil if input is empty string or null/nil.

def greet(name)

if name == ""
  p nil
elsif name == nil
  p nil
else
  "hello #{name}!"
end

end
