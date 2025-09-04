#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 8001 -u -b 9130.47k -t 30 --tos 92 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 8002 -u -b 0.00k -t 30 --tos 93 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 8003 -u -b 0.00k -t 30 --tos 94 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 8004 -u -b 0.00k -t 30 --tos 95 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 8005 -u -b 3119.03k -t 30 --tos 96 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 8006 -u -b 2008.46k -t 30 --tos 97 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 8007 -u -b 2559.49k -t 30 --tos 98 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 8009 -u -b 0.00k -t 30 --tos 99 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 8010 -u -b 0.00k -t 30 --tos 100 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 8011 -u -b 1304.27k -t 30 --tos 101 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 8012 -u -b 7008.68k -t 30 --tos 102 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 8013 -u -b 6816.54k -t 30 --tos 103 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 8014 -u -b 3292.56k -t 30 --tos 104 >/dev/null 2>&1 &
sleep 0.4