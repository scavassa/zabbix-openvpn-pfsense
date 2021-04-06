# zabbix-openvpn-pfsense

Script for monitoring OpenVPN installed into pfSense using Zabbix.
It shows an OpenVPN user’s status, and its uplink and downlink traffic.
This was tested using pfSense 2.5.0 and Zabbix 3.2.

## Files

  * discover_vpn.sh
  * openvpn.xml
  * zabbix_agentd.conf

#### discover_vpn.sh
Bash script file responsible for discover OpenVPN logged users.

#### openvpn.xml
Zabbix Template File 

#### zabbix_agentd.conf
File containing instructions for Zabbix Agent

## Instructions

First you must install the package **sudo** into you pfSense, then you must configure it
going through `System -> sudo` then add a new entry for zabbix to run as user root with `No Password` checked and `ALL` as command list then save this configuration.

Install the **zabbix-agent** packet into your pfSense and configure it as well. 

### Setup:

1.	 Copy the file **discover_vpn.sh** to **/usr/local/etc/zabbix30**, make shure to make it executable using `chmod +x /usr/local/etc/zabbix30/discover_vpn.sh`

2.	 Copy all lines from **zabbix_agentd.conf** file and paste to the end of zabbix agent  config `/usr/local/etc/zabbix30/zabbix_agentd.conf`

3.	 Import openvpn.xml to Zabbix template.