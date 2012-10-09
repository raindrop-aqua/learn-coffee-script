global = this

circle = {
  radius: 6
  diameter: ->
    return @.radius * 2
}

TestCase "Circle Test", {
  "test should implicitly bind to object": ->
    assertEquals 12, circle.diameter()
    return

  "test implicit binding to the global object": ->
    myDiameter = circle.diameter
    assertNaN myDiameter()

    global.radius = 2
    assertEquals 4, myDiameter()
    return

  "test should call radius on anonymous object": ->
    assertEquals( 10, circle.diameter.call {radius: 5})
    return
}
