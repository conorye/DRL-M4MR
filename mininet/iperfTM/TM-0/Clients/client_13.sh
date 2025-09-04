#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 13001 -u -b 15666.04k -t 30 --tos 157 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 13002 -u -b 13872.97k -t 30 --tos 158 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 13003 -u -b 8096.81k -t 30 --tos 159 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 13004 -u -b 4317.84k -t 30 --tos 160 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 13005 -u -b 5351.62k -t 30 --tos 161 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 13006 -u -b 0.00k -t 30 --tos 162 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 13007 -u -b 0.00k -t 30 --tos 163 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 13008 -u -b 5453.23k -t 30 --tos 164 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 13009 -u -b 13694.55k -t 30 --tos 165 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 13010 -u -b 2489.02k -t 30 --tos 166 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 13011 -u -b 0.00k -t 30 --tos 167 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 13012 -u -b 12025.48k -t 30 --tos 168 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 13014 -u -b 5649.36k -t 30 --tos 169 >/dev/null 2>&1 &
sleep 0.4