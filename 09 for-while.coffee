### while ###
num = 10

while num > 0
  console.log num
  --num

### while at the end ###
num = 10

console.log num while num++ < 10

### until ###
num = 10

until num < 0
  console.log num
  --num

### while return ###
num = 0

arr = while num < 5 then num++ * 2

console.log arr

### for ###
arr = [1..5]

for i in arr
  console.log i

### for at the end ###
arr = [1..5]

console.log i for i in arr

### for - index in loop ###
arr = ['a', 'b', 'c']

for value, key of arr
  console.log "#{key}, #{value}"

### for - use in array ###
obj =
  foo: "str"
  bar: 100
  baz: true

for key, element of obj
  console.log "#{key}: #{element}"

### for - use in array at the end ###
obj =
  foo: "str"
  bar: 100
  baz: true

console.log "#{key}, #{element}" for key, element of obj

### for - by - the statement of step ###
arr = [1..10]

for value in arr
  console.log value

console.log "step by 2"

for value in arr by 2
  console.log value

### for - break ###
arr = [0...10]

for value in arr
  console.log value
  if value is 5 then break

### for - continue ###
arr = [0...10]

for value in arr
  console.log value
  if value is 5 then continue

