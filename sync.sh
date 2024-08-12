#!/usr/bin/expect
set timeout 20
spawn mount -t davfs https://wp.hapuren.cn/dav mirrors/
expect "Username:"
send "user\r"
expect "Password:"
send "pwd\r"
expect eof