// Generated by CoffeeScript 1.3.3
var sum;

sum = function() {
  var index, total, value, _i, _len;
  total = 0;
  for (index = _i = 0, _len = arguments.length; _i < _len; index = ++_i) {
    value = arguments[index];
    total += value;
  }
  return total;
};