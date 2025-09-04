#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 9001 -u -b 0.00k -t 30 --tos 105 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 9002 -u -b 21986.84k -t 30 --tos 106 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 9003 -u -b 12832.37k -t 30 --tos 107 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 9004 -u -b 6843.21k -t 30 --tos 108 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 9005 -u -b 8481.62k -t 30 --tos 109 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 9006 -u -b 0.00k -t 30 --tos 110 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 9007 -u -b 6960.06k -t 30 --tos 111 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 9008 -u -b 8642.65k -t 30 --tos 112 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 9010 -u -b 3944.77k -t 30 --tos 113 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 9011 -u -b 3546.71k -t 30 --tos 114 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 9012 -u -b 19058.80k -t 30 --tos 115 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 9013 -u -b 18536.30k -t 30 --tos 116 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 9014 -u -b 0.00k -t 30 --tos 117 >/dev/null 2>&1 &
sleep 0.4