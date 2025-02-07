#!/usr/bin/expect
set timeout 20
spawn mount -t davfs YOUR_URL target/
expect "Username:"
send "USER_NAME\r"
expect "Password:"
send "PASSWORD\r"
expect eof
