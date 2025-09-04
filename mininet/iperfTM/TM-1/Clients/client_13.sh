#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 13001 -u -b 17693.37k -t 30 --tos 157 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.2 -p 13002 -u -b 15668.27k -t 30 --tos 158 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 13003 -u -b 9144.61k -t 30 --tos 159 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 13004 -u -b 4876.61k -t 30 --tos 160 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 13005 -u -b 0.00k -t 30 --tos 161 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 13006 -u -b 3892.06k -t 30 --tos 162 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 13007 -u -b 4959.88k -t 30 --tos 163 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 13008 -u -b 6158.93k -t 30 --tos 164 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 13009 -u -b 15466.75k -t 30 --tos 165 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 13010 -u -b 2811.12k -t 30 --tos 166 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 13011 -u -b 2527.46k -t 30 --tos 167 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 13012 -u -b 13581.69k -t 30 --tos 168 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 13014 -u -b 6380.44k -t 30 --tos 169 >/dev/null 2>&1 &
sleep 0.4