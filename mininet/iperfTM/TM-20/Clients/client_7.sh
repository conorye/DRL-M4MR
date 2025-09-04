#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 7001 -u -b 0.00k -t 30 --tos 79 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 7002 -u -b 6336.85k -t 30 --tos 80 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 7003 -u -b 3698.43k -t 30 --tos 81 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 7004 -u -b 1972.29k -t 30 --tos 82 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 7005 -u -b 2444.50k -t 30 --tos 83 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 7006 -u -b 1574.10k -t 30 --tos 84 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 7008 -u -b 2490.91k -t 30 --tos 85 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 7009 -u -b 6255.35k -t 30 --tos 86 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 7010 -u -b 1136.93k -t 30 --tos 87 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 7011 -u -b 1022.20k -t 30 --tos 88 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 7012 -u -b 5492.96k -t 30 --tos 89 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 7013 -u -b 5342.37k -t 30 --tos 90 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 7014 -u -b 2580.50k -t 30 --tos 91 >/dev/null 2>&1 &
sleep 0.4