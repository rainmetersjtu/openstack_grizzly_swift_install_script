#!/bin/bash
#Program:
#	This script is used to create swift ring files
#History:
#	2013/10/25 rainmeter first version
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

#1.Create the account, container and object rings builder files.
#start building the ring with follow command:
# 	swift-ring-builder <builder_file> create <part_power> <replicas> <min_part_hours>
#This will start the ring build process creating the <builder_file> with 2^<part_power> partitions. <min_part_hours> is the time in hours befor#e a specific partition can be moved in succession
cd /etc/swift

echo "1.creating rings builder files...\n"
read -p "Please input partition power: " part_power 
read -p "Please input replicas " replicas
read -p "Please input min_part_hours: " min_part_hours

sudo swift-ring-builder account.builder create $part_power $replicas $min_part_hours
sudo swift-ring-builder container.builder create $part_power $replicas $min_part_hours
sudo swift-ring-builder object.builder create $part_power $replicas $min_part_hours

#2.Add storage devices to each ring:
#	swift-ring-builder <builder_file> add z<zone>-<ip>:<port>/<device_name>_<meta> <weight>
#This will add a device to the ring where <builder_file> is the name of the builder file that was created previously, <zone> is the number of t#he zone this device is in, <ip> is the ip address of the server the device is in, <port> is the port number that the server is running on, <de#vice_name> is the name of the device on the server (for example: sdb1), <meta> is a string of metadata for the device (optional), and <weight># is a float weight that determines how many partitions are put on the device relative to the rest of the devices in the cluster (a good starti#ng point is 100.0 x TB on the drive). Add each device that will be initially in the cluster. 

echo "2.Adding storage devices to each ring...\n"
read -p "Please input total zone number: " total_zone
read -p "Please input total device number: " total_device
read -p "Please input storage server ip: " storage_ip

for i in $(seq 1 $total_zone)
do
	for j in $(seq 1 $(($total_device/$total_zone)))
	do
		sudo swift-ring-builder /etc/swift/account.builder add z${i}-${storage_ip}:6002/z${i}d${j} 100
		sudo swift-ring-builder /etc/swift/container.builder add z${i}-${storage_ip}:6001/z${i}d${j} 100
		sudo swift-ring-builder /etc/swift/object.builder add z${i}-${storage_ip}:6000/z${i}d${j} 100
	done
done

tmp=$(($total_device%$total_zone))
	echo "\ntmp=$tmp\n"
if [ $tmp -ne 0 ]; then
	for k in $(seq $(($total_device/$total_zone+1)) $(($total_device/$total_zone+$tmp)))
        do
                sudo swift-ring-builder /etc/swift/account.builder add z${total_zone}-${storage_ip}:6002/z${total_zone}d${k} 100
                sudo swift-ring-builder /etc/swift/container.builder add z${total_zone}-${storage_ip}:6001/z${total_zone}d${k} 100
		sudo swift-ring-builder /etc/swift/object.builder add z${total_zone}-${storage_ip}:6000/z${total_zone}d${k} 100
	done	
fi


#3.Check the info of ring
sudo swift-ring-builder account.builder
sudo swift-ring-builder container.builder
sudo swift-ring-builder object.builder


#4.Distribute the partitions across the drives in the ring:
#	swift-ring-builder <builder_file> rebalance
#This will distribute the partitions across the drives in the ring. It is important whenever making changes to the ring to make all the changes#required before running rebalance. This will ensure that the ring stays as balanced as possible, and as few partitions are moved as possible.
#The above process should be done to make a ring for each storage service (Account, Container and Object). The builder files will be needed in #future changes to the ring, so it is very important that these be kept and backed up. The resulting .tar.gz ring file should be pushed to all #of the servers in the cluster. For more information about building rings, running swift-ring-builder with no options will display help text wi#th available commands and options.

sudo swift-ring-builder /etc/swift/account.builder rebalance
sudo swift-ring-builder /etc/swift/container.builder rebalance
sudo swift-ring-builder /etc/swift/object.builder rebalance

#5.Check to see that you now have 3 ring files in the directory /etc/swift.
ls /etc/swift/*gz

chown -R swift:swift /etc/swift/


