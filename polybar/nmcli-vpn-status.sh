#!/bin/sh

printf "VPN: " && (nmcli connection | awk 'NR > 1 { if ($NF != "--" && ($(NF-1) == "vpn")) { for (i=1;i<=NF-3;i++) { printf $i } } }' | awk '{ print $1 "\n" }' && echo down) | head -n 1
