#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 10001 -u -b 3923.30k -t 30 --tos 118 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 10002 -u -b 3474.26k -t 30 --tos 119 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 10003 -u -b 2027.71k -t 30 --tos 120 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 10004 -u -b 1081.33k -t 30 --tos 121 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 10005 -u -b 1340.23k -t 30 --tos 122 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 10006 -u -b 863.02k -t 30 --tos 123 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 10007 -u -b 1099.80k -t 30 --tos 124 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 10008 -u -b 1365.67k -t 30 --tos 125 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 10009 -u -b 3429.58k -t 30 --tos 126 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 10011 -u -b 0.00k -t 30 --tos 127 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 10012 -u -b 3011.58k -t 30 --tos 128 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 10013 -u -b 2929.02k -t 30 --tos 129 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 10014 -u -b 1414.79k -t 30 --tos 130 >/dev/null 2>&1 &
sleep 0.4