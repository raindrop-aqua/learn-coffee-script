testCase "strftime", {
  setUp: ->
    this.date = new Date 2009, 9, 2, 22, 14, 45
  "test format specifier %Y": ->
    assert "%Y should return full year", @.date.strftime("%Y") is "2009"
  "test format specifier %m": ->
    assert "%m should return month", @.date.strftime("%m") is "10"
  "test format specifier %d": ->
    assert "%d should return date", @.date.strftime("%d") is "02"
  "test format specifier %y": ->
    assert "%y should return year as two digits", @.date.strftime("%y") is "09"
  "test format shorthand %F": ->
    assert "%F should act as %Y-%m-%d", @.date.strftime("%F") is "2009-10-02"
}
