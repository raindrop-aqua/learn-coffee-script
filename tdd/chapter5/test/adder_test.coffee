TestCase "Adder Test", {
  "test should add or subtract one form arg": ->
    inc = adder 1
    dec = adder -1

    assertEquals 3, inc 2
    assertEquals 3, dec 4
    assertEquals 3, inc dec 3
    return
}