#!/bin/bash

echo "entered in the shell script"
echo "trying ssh to the vsc.."
/usr/bin/sshpass -e ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no $1@$2<<ENDHERE

echo "configuring system name"
configure system name $7

echo "configuring ntpserver1"
configure system time ntp server $3

echo "configuring ntpserver2"
configure system time ntp server $4

echo "configuring configure system time ntp no shutdown"
configure system time ntp no shutdown

echo "configuring system time sntp shutdown"
configure system time sntp shutdown
exit

echo "configuring system time zone"
configure system time zone UTC
exit

echo "configuring XMPP server setup"
configure vswitch-controller xmpp-server $5
exit
exit

echo "saving configuration"
admin save

echo "configure TUL IP"
configure router interface "control"
address  $6
no shutdown
exit all
admin
save cf1:
exit

echo "saving configuration"
admin save
exit
logout
ENDHERE






