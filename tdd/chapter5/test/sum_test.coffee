TestCase "Sum Test", {
  "test should sum numbers": ->
    assertEquals 15, sum(1, 2, 3, 4, 5)
    assertEquals 15, sum.apply null, [1, 2, 3, 4, 5]
    return
}