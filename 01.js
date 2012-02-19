(function() {
  var re;

  re = new RegExp('abc');

  alert(re.test("1abcd"));

}).call(this);
