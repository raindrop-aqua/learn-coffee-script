// Generated by CoffeeScript 1.3.3
var i, index, medal, str, _i, _len;

medal = ["gold", "silver", "bronze"];

str = "Medal: ";

for (index = _i = 0, _len = medal.length; _i < _len; index = ++_i) {
  i = medal[index];
  str += index;
}

console.log(str);
