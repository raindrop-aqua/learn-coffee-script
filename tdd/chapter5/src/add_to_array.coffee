addToArray = ->
  targetArr = arguments["0"]
  add = Array::slice.call arguments, 1

  return targetArr.concat add

