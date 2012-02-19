(function() {
  var os, re, re1, re2, re3, re4, re5, re6, re7, re8, result8, str;

  re = new RegExp('abc');

  console.log(re.test("1Abcd"));

  re1 = new RegExp('abc', "i");

  console.log("" + (re1.test('2Abcd')) + " re1");

  re2 = /abc/i;

  console.log("" + (re2.test('2Abcd')) + " re2");

  re3 = /^he/i;

  console.log("" + (re3.test('hello')) + " " + (re3.test('thehelp')));

  str = "hell";

  console.log("" + ((str.indexOf("he")) === 0) + " string");

  re4 = /\s/;

  console.log("" + (re4.test('hello world')) + " \\s");

  re5 = /[a-z]/i;

  console.log("" + (re5.test('hello world')) + " " + (re5.test('3.14159')) + " range");

  re6 = /^[a-z]+\s+\d+$/i;

  console.log("" + (re6.test('ubuntu 9')) + " " + (re6.test('ubuntu 11')) + " " + (re6.test('ubuntu9')) + "             " + (re6.test('9ubuntu 9')));

  re7 = /^[a-z]*\s+\d+$/i;

  console.log("" + (re7.test('ubuntu 9')) + " " + (re7.test(' 11')) + " " + (re7.test('1 9')));

  os = 'Ubuntu 11';

  console.log("系统：" + (/\w+/.exec(os)) + "-版本：" + (/\d+/.exec(os)));

  re8 = /^([a-z]+)\s+(\d+)$/i;

  console.log(re8.exec(os));

  result8 = re8.exec(os);

  console.log("系统：" + result8[1] + "\n版本：" + result8[2]);

}).call(this);
