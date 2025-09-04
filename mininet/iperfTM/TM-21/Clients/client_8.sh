#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 8001 -u -b 0.00k -t 30 --tos 92 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 8002 -u -b 7611.80k -t 30 --tos 93 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 8003 -u -b 4442.55k -t 30 --tos 94 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 8004 -u -b 2369.11k -t 30 --tos 95 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 8005 -u -b 2936.32k -t 30 --tos 96 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 8006 -u -b 1890.80k -t 30 --tos 97 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 8007 -u -b 2409.56k -t 30 --tos 98 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 8009 -u -b 7513.91k -t 30 --tos 99 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 8010 -u -b 1365.67k -t 30 --tos 100 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 8011 -u -b 1227.86k -t 30 --tos 101 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 8012 -u -b 6598.12k -t 30 --tos 102 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 8013 -u -b 0.00k -t 30 --tos 103 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 8014 -u -b 0.00k -t 30 --tos 104 >/dev/null 2>&1 &
sleep 0.4