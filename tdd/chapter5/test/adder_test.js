// Generated by CoffeeScript 1.3.3

TestCase("Adder Test", {
  "test should add or subtract one form arg": function() {
    var dec, inc;
    inc = adder(1);
    dec = adder(-1);
    assertEquals(3, inc(2));
    assertEquals(3, dec(4));
    assertEquals(3, inc(dec(3)));
  }
});
