// Generated by CoffeeScript 1.3.3
var assert;

assert = function(message, expr) {
  if (arguments.length < 2) {
    throw new Error("Provide message and value to test");
  }
  if (!arguments[1]) {
    throw new Error(arguments[0]);
  }
  assert.count++;
  return true;
};

assert.count = 0;
