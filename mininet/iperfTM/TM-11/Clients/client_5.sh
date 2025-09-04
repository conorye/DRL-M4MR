#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 5001 -u -b 0.00k -t 30 --tos 53 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 5002 -u -b 0.00k -t 30 --tos 54 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 5003 -u -b 0.00k -t 30 --tos 55 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 5004 -u -b 2231.38k -t 30 --tos 56 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 5006 -u -b 0.00k -t 30 --tos 57 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 5007 -u -b 0.00k -t 30 --tos 58 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 5008 -u -b 2818.13k -t 30 --tos 59 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 5009 -u -b 7077.09k -t 30 --tos 60 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 5010 -u -b 1286.28k -t 30 --tos 61 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 5011 -u -b 1156.48k -t 30 --tos 62 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 5012 -u -b 0.00k -t 30 --tos 63 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 5013 -u -b 0.00k -t 30 --tos 64 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 5014 -u -b 2919.48k -t 30 --tos 65 >/dev/null 2>&1 &
sleep 0.4