// Generated by CoffeeScript 1.3.3

YUI({
  combine: true,
  timeout: 10000
}).use("node", "console", "test", function(Y) {
  var assert, r, strftimeTestCase;
  assert = Y.Assert;
  strftimeTestCase = new Y.Test.Case({
    name: "Date.prototype.strftime Tests",
    setUp: function() {
      return this.date = new Date(2009, 9, 2, 22, 14, 45);
    },
    tearDown: function() {
      return delete this.date;
    },
    "test %Y should return full year": function() {
      var year;
      year = Date.formats.Y(this.date);
      assert.isNumber(year);
      return assert.areEqual(2009, year);
    },
    "test %m should return month": function() {
      var month;
      month = Date.formats.m(this.date);
      assert.isString(month);
      return assert.areEqual("10", month);
    },
    "test %d should return date": function() {
      return assert.areEqual("02", Date.formats.d(this.date));
    },
    "test %y should return year as two digits": function() {
      return assert.areEqual("09", Date.formats.y(this.date));
    },
    "test %F should act as %Y-%m-%d": function() {
      return assert.areEqual("2009-10-02", this.date.strftime("%F"));
    }
  });
  r = new Y.Console({
    newestOnTop: false,
    style: "block"
  });
  r.render("#testReport");
  Y.Test.Runner.add(strftimeTestCase);
  return Y.Test.Runner.run();
});
