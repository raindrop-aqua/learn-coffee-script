TestCase "strftime Test", {
  setUp: ->
    @.date = new Date 2009, 9, 2, 22, 14, 45
    return

  tearDown: ->
    delete @.date
    return

  "test %Y should return full year": ->
    year = Date.formats.Y @.date

    assertNumber year
    assertEquals 2009, year
    return

  "test %m should return month": ->
    month = Date.formats.m @.date

    assertString month
    assertEquals "10", month
    return

  "test %d should return date": ->
    assertEquals "02", Date.formats.d @.date
    return

  "test %y should return year as two digits": ->
    assertEquals "09", Date.formats.y @.date
    return

  "test %F should act as %Y-%m-%d": ->
    assertEquals "2009-10-02", @.date.strftime "%F"
    return
}