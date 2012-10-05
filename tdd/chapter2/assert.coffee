assert = (message, expr) ->
  if not expr
    throw new Error message
  assert.count++
  true

assert.count = 0
