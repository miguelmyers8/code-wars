# Sum all the numbers of the array
# (in F# and Haskell you get a list) except the highest
# and the lowest element (the value, not the index!).
# (The highest/lowest element is respectively
# only one element at each edge,
#  even if there are more than one with the same value!)

def sum_array(arr):
    if arr == None:
        return 0
    elif len(arr) <= 2:
        return 0
    else:
      b = max(arr)
      c = min(arr)
      arr.remove(b)
      arr.remove(c)
      d = sum(arr)
      return d

# Reversing Words in a String
def reverse(st):
    b= st.split(' ')[:: -1]
    st = ' '.join(b)
    return st
