#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 4001 -u -b 8576.82k -t 30 --tos 40 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 4002 -u -b 0.00k -t 30 --tos 41 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 4003 -u -b 0.00k -t 30 --tos 42 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 4005 -u -b 2929.90k -t 30 --tos 43 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 4006 -u -b 0.00k -t 30 --tos 44 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 4007 -u -b 2404.29k -t 30 --tos 45 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 4008 -u -b 2985.53k -t 30 --tos 46 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 4009 -u -b 7497.47k -t 30 --tos 47 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 4010 -u -b 1362.69k -t 30 --tos 48 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 4011 -u -b 1225.18k -t 30 --tos 49 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 4012 -u -b 0.00k -t 30 --tos 50 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 4013 -u -b 6403.20k -t 30 --tos 51 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 4014 -u -b 3092.90k -t 30 --tos 52 >/dev/null 2>&1 &
sleep 0.4