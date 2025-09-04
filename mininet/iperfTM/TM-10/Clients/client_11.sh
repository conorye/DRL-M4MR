#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 11001 -u -b 3746.89k -t 30 --tos 131 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 11002 -u -b 0.00k -t 30 --tos 132 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 11003 -u -b 1936.54k -t 30 --tos 133 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 11004 -u -b 1032.71k -t 30 --tos 134 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 11005 -u -b 1279.96k -t 30 --tos 135 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 11006 -u -b 824.22k -t 30 --tos 136 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 11007 -u -b 0.00k -t 30 --tos 137 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 11008 -u -b 1304.27k -t 30 --tos 138 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 11009 -u -b 3275.37k -t 30 --tos 139 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 11010 -u -b 0.00k -t 30 --tos 140 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 11012 -u -b 0.00k -t 30 --tos 141 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 11013 -u -b 2797.32k -t 30 --tos 142 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 11014 -u -b 0.00k -t 30 --tos 143 >/dev/null 2>&1 &
sleep 0.4