#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 3001 -u -b 12762.54k -t 30 --tos 27 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 3002 -u -b 11301.80k -t 30 --tos 28 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 3004 -u -b 3517.59k -t 30 --tos 29 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 3005 -u -b 4359.77k -t 30 --tos 30 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 3006 -u -b 2807.41k -t 30 --tos 31 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 3007 -u -b 0.00k -t 30 --tos 32 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 3008 -u -b 0.00k -t 30 --tos 33 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 3009 -u -b 0.00k -t 30 --tos 34 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 3010 -u -b 2027.71k -t 30 --tos 35 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 3011 -u -b 1823.10k -t 30 --tos 36 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 3012 -u -b 9796.71k -t 30 --tos 37 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 3013 -u -b 9528.13k -t 30 --tos 38 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 3014 -u -b 4602.32k -t 30 --tos 39 >/dev/null 2>&1 &
sleep 0.4