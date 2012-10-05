testCase "String Trim Test", {
  "test should trim remove trailing white-space at start": ->
    assert "should trim remove trailing white-space at the start", "a string" is " a string".trim()
  "test should trim remove trailing white-space at end": ->
    assert "should trim remove trailing white-space at the end", "a string" is "a string ".trim()
}
