### basic ###
print = (str)->
  console.log str

print "Hello Coffee Script!"


### return value ###
pow = (n)->
  return n * n

print pow 5

### return value without return ###
pow2 = (n)->
  n * n

print pow2 15

### arguments ###
sum = (a, b)-> a + b

print sum 1, 99

### arguments with default ###
sum2 = (a, b=100)-> a + b

print sum2 10, 20
print sum2 5

### Variable-length argument ###
sum3 = (n...)->
  s = 0
  s += t for t in n
  s

print sum3 2, 4
print sum3 1, 2, 3, 4, 5, 6, 7, 8, 9, 10

### Omit the parentheses ###
print("Hello World!")
print "Hello World!"


