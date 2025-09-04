#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 12001 -u -b 18121.08k -t 30 --tos 144 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 12002 -u -b 16047.02k -t 30 --tos 145 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 12003 -u -b 9365.67k -t 30 --tos 146 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 12004 -u -b 4994.50k -t 30 --tos 147 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 12005 -u -b 6190.28k -t 30 --tos 148 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 12006 -u -b 3986.15k -t 30 --tos 149 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 12007 -u -b 0.00k -t 30 --tos 150 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 12008 -u -b 6307.81k -t 30 --tos 151 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 12009 -u -b 15840.64k -t 30 --tos 152 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 12010 -u -b 2879.08k -t 30 --tos 153 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 12011 -u -b 2588.55k -t 30 --tos 154 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 12013 -u -b 13528.66k -t 30 --tos 155 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 12014 -u -b 6534.68k -t 30 --tos 156 >/dev/null 2>&1 &
sleep 0.4