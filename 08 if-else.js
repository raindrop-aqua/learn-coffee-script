// Generated by CoffeeScript 1.3.3
/* if
*/

var hoge;

hoge = 100;

if (hoge === 100) {
  console.log("hogeは100です");
}

if (hoge === 200) {
  console.log("hogeは200です");
}

/* if and else-if
*/


hoge = 128;

if (hoge === 100) {
  console.log("hogeは100です");
} else if (hoge === 128) {
  console.log("hogeは128です");
}

/* unless
*/


hoge = 128;

if (hoge !== 100) {
  console.log("hogeは100以外です");
} else {
  console.log("hogeは100です");
}

/* if and else-if and else
*/


hoge = 128;

if (hoge === 100) {
  console.log("hogeは100です");
} else if (hoge === 128) {
  console.log("hogeは128です");
} else {
  console.log("hogeは100以外です");
}

/* if-then
*/


hoge = 100;

if (hoge === 100) {
  console.log("100!");
}

/* if-then-else
*/


hoge = 128;

if (hoge === 128) {
  console.log("100!");
} else {
  console.log("not 100!");
}

/* If at the end
*/


hoge = 100;

if (hoge === 100) {
  console.log("100");
}

/* switch
*/


hoge = 1;

switch (hoge) {
  case 1:
    console.log("1");
    break;
  case 2:
    console.log("2");
    break;
  case 3:
  case 4:
    console.log("3 or 4");
    break;
  case 5:
    console.log("5");
    break;
  default:
    console.log("other");
}
