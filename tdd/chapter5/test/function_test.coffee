TestCase "Function Test", {
  "test function length property": ->
    assertEquals 2, assert.length
    #assertEquals 1, document.getElementById.length  # for firefox
    assertEquals 0, document.getElementById.length  # for ie chrome
    assertEquals 0, console.log.length
    return

  "test scope": ->
    sum = ->
      assertUndefined(i)

      func = ->
        assertUndefined someVar
        return
      assertException(func, "ReferenceError")
      total = arguments[0]

      if arguments.length > 1
        for i in [1...arguments.length]
          total += arguments[i]
      assertEquals 5, i

      return total
    sum 1, 2, 3, 4, 5
    return
}

modify = (a, b) ->
  b = 42
  arguments[0] = arguments[1]
  return a

TestCase "Formal Parameters Arguments Test", {
  "test dynamic relationship": ->
    assertEquals 42, modify 1, 2
    return

  "test no dynamic mapping for missing parameters": ->
    assertUndefined modify 1
    return
}

global = this

TestCase "Global Object Test", {
  "test window should be global object": ->
    assertSame global, window
    assertSame global.window, window
    assertSame window.window, window
    return
}
