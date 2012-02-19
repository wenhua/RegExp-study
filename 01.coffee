re = new RegExp 'abc'
console.log  re.test "1Abcd" #true

re1 = new RegExp 'abc',"i"
#i是ignoreCase，g全文查找，m多行查找
console.log  "#{re1.test '2Abcd'} re1"

re2 = /abc/i #字面量方式
console.log  "#{re2.test '2Abcd'} re2"

re3 = /^he/i #脱字符表示开始位置
console.log "#{re3.test 'hello'} #{re3.test 'thehelp'}"

str = "hell"
console.log "#{(str.indexOf "he") is 0} string"

re4 = /\s/ #匹配空白字符，空格，制表符，换页符等
console.log "#{re4.test 'hello world'} \\s"

re5 = /[a-z]/i #范围，这里是判断是否包含字母
#re5 = /[a-zA-Z0-9]/i
console.log "#{re5.test 'hello world'} #{re5.test '3.14159'} range"

re6 = /^[a-z]+\s+\d+$/i #匹配以字母开头，跟一个空格，再跟一个数字
#+代表至少要出现一次，结果t t f f
console.log "#{re6.test 'ubuntu 9'} #{re6.test 'ubuntu 11'} #{re6.test 'ubuntu9'}
             #{re6.test '9ubuntu 9'}"

re7 = /^[a-z]*\s+\d+$/i #*表示可有可无
console.log "#{re7.test 'ubuntu 9'} #{re7.test ' 11'} #{re7.test '1 9'}"

os = 'Ubuntu 11' #exec 将匹配的结果返回
console.log "系统：#{/\w+/.exec os}-版本：#{/\d+/.exec os}"

re8 = /^([a-z]+)\s+(\d+)$/i #括号进行分组，结果是一个数组
#第一个元素是整个表达式的匹配，后面的元素分别是各个分组的匹配
console.log re8.exec os
result8 = re8.exec os
console.log "系统：#{result8[1]}\n版本：#{result8[2]}"













































