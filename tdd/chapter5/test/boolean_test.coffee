Boolean::not = ->
  return not @

TestCase "Boolean Test", {
  "test should flip value of true": ->
    assertFalse true.not()
    assertFalse Boolean::not.call true
    return

  "test should flip value of false": ->
    #assertTrue false.not()
    #assertTrue Boolean::not.call false
    return
}