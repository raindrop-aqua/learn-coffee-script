// Generated by CoffeeScript 1.3.3
var testCase;

testCase = function(name, tests) {
  var color, hasSetup, hasTeardown, successful, test, testCount;
  assert.count = 0;
  successful = 0;
  testCount = 0;
  hasSetup = typeof tests.setUp === "function";
  hasTeardown = typeof tests.tearDown === "function";
  for (test in tests) {
    if (!/^test/.test(test)) {
      continue;
    }
    testCount++;
    try {
      if (hasSetup) {
        tests.setUp();
      }
      tests[test]();
      output(test, "#0c0");
      if (hasTeardown) {
        tests.tearDown();
      }
      successful++;
    } catch (e) {
      output("" + test + " failed: " + e.message, "#c00");
    }
  }
  color = (successful === testCount ? "#0c0" : "#c00");
  return output("<strong>" + testCount + " tests, " + (testCount - successful) + " failures</strong>", color);
};
