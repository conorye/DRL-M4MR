#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.2 -p 1002 -u -b 19784.64k -t 30 --tos 1 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 1003 -u -b 11547.08k -t 30 --tos 2 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 1004 -u -b 6157.80k -t 30 --tos 3 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 1005 -u -b 7632.10k -t 30 --tos 4 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 1006 -u -b 0.00k -t 30 --tos 5 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 1007 -u -b 6262.94k -t 30 --tos 6 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 1008 -u -b 0.00k -t 30 --tos 7 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 1009 -u -b 19530.18k -t 30 --tos 8 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 1010 -u -b 3549.66k -t 30 --tos 9 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 1011 -u -b 3191.47k -t 30 --tos 10 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 1012 -u -b 0.00k -t 30 --tos 11 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 1013 -u -b 16679.71k -t 30 --tos 12 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 1014 -u -b 8056.71k -t 30 --tos 13 >/dev/null 2>&1 &
sleep 0.4