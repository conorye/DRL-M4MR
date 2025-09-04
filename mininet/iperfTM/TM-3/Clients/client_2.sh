#!/bin/bash 
echo Generating traffic...
iperf3 -c 192.168.0.1 -p 2001 -u -b 25152.10k -t 30 --tos 14 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.3 -p 2003 -u -b 12999.57k -t 30 --tos 15 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.4 -p 2004 -u -b 6932.37k -t 30 --tos 16 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.5 -p 2005 -u -b 8592.12k -t 30 --tos 17 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.6 -p 2006 -u -b 0.00k -t 30 --tos 18 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.7 -p 2007 -u -b 7050.74k -t 30 --tos 19 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.8 -p 2008 -u -b 0.00k -t 30 --tos 20 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.9 -p 2009 -u -b 21986.84k -t 30 --tos 21 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.10 -p 2010 -u -b 3996.17k -t 30 --tos 22 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.11 -p 2011 -u -b 0.00k -t 30 --tos 23 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.12 -p 2012 -u -b 19307.11k -t 30 --tos 24 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.13 -p 2013 -u -b 18777.81k -t 30 --tos 25 >/dev/null 2>&1 &
sleep 0.4
iperf3 -c 192.168.0.14 -p 2014 -u -b 9070.14k -t 30 --tos 26 >/dev/null 2>&1 &
sleep 0.4