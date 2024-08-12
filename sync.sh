#!/usr/bin/expect
set timeout 20
spawn mount -t davfs https://wp.hapuren.cn/dav mirrors/
expect "Username:"
send "twentyone\r"
expect "Password:"
send "twentyone\r"
spawn cd mirrors
spawn rsync -avz rsync://rsync.ustc.edu.cn/debian/* debian
expect eof