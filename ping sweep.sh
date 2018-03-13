#!/bin/bash

#Line identifies host in range
for addr in $(seq 1-101); do

#line identifies ping count -c, ip subnet 1.1.1, grep field with active result "bytes from", cuts output based on the delimiter " " keeps the 4 object, then cuts
# the out based on the delimeter : and keeps the 1 object and to add simultaneous action & output is only ips that responded.
ping -c 1 1.1.1.$addr |grep "bytes from" |cut -d " " -f 4|cut -d ":" -f 1 & 
done