#!/bin/bash
sleep 30;
/usr/sbin/kea-dhcp4 -c /kea-ctrl/kea-dhcp4.json &
/usr/sbin/kea-ctrl-agent -c /kea-ctrl/kea-ctrl-agent.json