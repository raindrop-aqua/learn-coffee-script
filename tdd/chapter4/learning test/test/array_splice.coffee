TestCase "Array Test", {
  "test array splice should modified array": ->
    arr = [1, 2, 3, 4, 5]
    result = arr.splice 2, 3

    assertEquals [1, 2], arr
    return

  "test array splice should return modified array": ->
    arr = [1, 2, 3, 4, 5]
    result = arr.splice 2, 3

    assertEquals [3, 4, 5], result


}