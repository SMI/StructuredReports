#!/bin/bash
# Use this to create a local virtual IP address that matches the address
# which an external user sees, so you can test your web server locally
# using the external address instead of localhost.
# (saves having to keep editing vis/js/api.js)

sudo ip link add eth10 type dummy
sudo ip addr add 10.0.2.135/32 brd + dev eth10 label eth10:0

# To remove the interface:
#sudo ip link del eth10 type dummy
#sudo ip addr delete 10.0.2.135/32 brd + dev eth10 label eth10:0
