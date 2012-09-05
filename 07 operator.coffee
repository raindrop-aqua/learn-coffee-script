hoge = 100

### is ###
console.log hoge is 100
console.log hoge is 200

### isnt ###
console.log hoge isnt 100
console.log hoge isnt 200

### not ###
hoge = 128
console.log not (hoge is 128)
console.log not (hoge is 100)

### and ###
hoge = 64
foo = 128
console.log (hoge is 64) and (foo is 128)
console.log (hoge is 64) and (foo is 100)

### or ###
hoge = 64
foo = 128
console.log (hoge is 64) or (foo is 128)
console.log (hoge is 64) or (foo is 100)

### true/yes/on ###
console.log true == yes
console.log true == on
console.log yes == on

### false/no/off ###
console.log false == no
console.log false == off
console.log no == off
