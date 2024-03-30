#!/bin/bash

# Values are cleared so that only new packets are displayed
nstat IpInReceives >/dev/null 2>&1

# Infinite loop
while true; do

	# Wait for 60 seconds
	sleep 60

    	# Determine the number of incoming IP packets in the last 60 seconds
    	packetsIn=$(nstat | grep 'IpInReceives' | awk '{print $2}')
    
    	# Display the current time and remove spaces
    	echo -n $(date +"%T" | tr -d "\n") " "
    
    	# Draw a star for each packet
	for i in $(seq 1 $packetsIn); do
        	echo -n "*"
    	done
    
    	# New line
    	echo ""
    
done
