testCase = (name, tests) ->
  assert.count = 0
  successful = 0
  testCount = 0
  hasSetup = typeof tests.setUp is "function"
  hasTeardown = typeof tests.tearDown is "function"

  for test of tests
    if not /^test/.test test
      continue

    testCount++

    try
      if hasSetup
        tests.setUp()

      tests[test]()
      output test, "#0c0"

      if hasTeardown
        tests.tearDown()

      successful++
    catch e
      output "#{test} failed: #{e.message}", "#c00"

  color = (if successful is testCount then "#0c0" else "#c00")
  output "<strong>#{testCount} tests, #{testCount - successful} failures</strong>", color
