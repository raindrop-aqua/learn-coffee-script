// Generated by CoffeeScript 1.3.3
var runBenchmark;

runBenchmark = function(name, test) {
  var func, ol;
  ol = document.getElementById("looplist");
  if (!ol) {
    ol = document.createElement("ol");
    ol.id = "looplist";
    document.body.appendChild(ol);
  }
  func = function() {
    var li, start, total;
    start = new Date().getTime();
    test();
    total = new Date().getTime() - start;
    li = document.createElement("li");
    li.innerHTML = "" + name + ": " + total + "ms";
    ol.appendChild(li);
  };
  setTimeout(func, 15);
};