###
Basic
###
class Hoge
  num: 100
  constructor: (n) ->
    @num = n
  printNum: ->
    console.log this.num
  printSuperNum: ->
    console.log "***#{@num}***"

Hoge::printSuperNum2 = ->
  console.log "===#{@num}==="



hoge = new Hoge(500)
hoge.printNum()
hoge.printSuperNum()
hoge.printSuperNum2()

###
Extends class
###
class SubHoge extends Hoge
  constructor: (n) ->
    super(n)
  printNum: ->
    console.log "---#{@num}---"

subHoge = new SubHoge(100)
subHoge.printNum()

###
Check class type
###
console.log hoge instanceof SubHoge
console.log subHoge instanceof SubHoge

###
Static variables
###
class Fuga
  @num: 128
  @func: ->
    "I'm static method."

console.log Fuga.num
console.log Fuga.func()
