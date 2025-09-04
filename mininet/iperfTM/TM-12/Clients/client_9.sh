#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 9001 -u -b 18343.28k -t 30 --tos 105 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 9002 -u -b 16243.79k -t 30 --tos 106 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 9003 -u -b 9480.51k -t 30 --tos 107 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 9004 -u -b 0.00k -t 30 --tos 108 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 9005 -u -b 6266.19k -t 30 --tos 109 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 9006 -u -b 4035.03k -t 30 --tos 110 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 9007 -u -b 0.00k -t 30 --tos 111 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 9008 -u -b 6385.16k -t 30 --tos 112 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 9010 -u -b 2914.38k -t 30 --tos 113 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 9011 -u -b 2620.29k -t 30 --tos 114 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 9012 -u -b 0.00k -t 30 --tos 115 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 9013 -u -b 13694.55k -t 30 --tos 116 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 9014 -u -b 6614.80k -t 30 --tos 117 >/dev/null 2>&1 &
sleep 0.4