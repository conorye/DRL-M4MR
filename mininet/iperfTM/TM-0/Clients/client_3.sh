#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 3001 -u -b 10845.34k -t 30 --tos 27 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 3002 -u -b 9604.03k -t 30 --tos 28 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 3004 -u -b 2989.17k -t 30 --tos 29 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 3005 -u -b 3704.84k -t 30 --tos 30 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 3006 -u -b 2385.68k -t 30 --tos 31 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 3007 -u -b 3040.21k -t 30 --tos 32 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 3008 -u -b 3775.18k -t 30 --tos 33 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 3009 -u -b 9480.51k -t 30 --tos 34 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 3010 -u -b 1723.11k -t 30 --tos 35 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 3011 -u -b 1549.23k -t 30 --tos 36 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 3012 -u -b 0.00k -t 30 --tos 37 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 3013 -u -b 8096.81k -t 30 --tos 38 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 3014 -u -b 3910.96k -t 30 --tos 39 >/dev/null 2>&1 &
sleep 0.4