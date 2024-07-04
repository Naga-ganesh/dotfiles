#!/usr/bin/expect -f
set timeout -1
spawn su root -c "systemctl stop browser-restrictions.service"
expect "Password:"
send -- "Nagaganesh@789\r"
expect eof
