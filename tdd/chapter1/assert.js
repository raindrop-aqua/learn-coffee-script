// Generated by CoffeeScript 1.3.3
var assert;

assert = function(message, expr) {
  if (!expr) {
    throw new Error(message);
  }
  assert.count++;
  return true;
};

assert.count = 0;