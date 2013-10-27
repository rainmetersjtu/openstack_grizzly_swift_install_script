#!/bin/bash
#Program:
#	This scripe is used to partition for all disks,and formatted in XFS,then change partition name.
#History:
#2013/10/25 rainmeter First version
#
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

parted -s /dev/sdb mklabel gpt
mkfs.xfs -f /dev/sdb
mkdir -p /srv/node/z1d1
mount -o noatime,nodiratime,nobarrier /dev/sdb /srv/node/z1d1
echo "/dev/sdb /srv/node/z1d1 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdc mklabel gpt
mkfs.xfs -f /dev/sdc
mkdir -p /srv/node/z1d2
mount -o noatime,nodiratime,nobarrier /dev/sdc /srv/node/z1d2
echo "/dev/sdc /srv/node/z1d2 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdd mklabel gpt
mkfs.xfs -f /dev/sdd
mkdir -p /srv/node/z1d3
mount -o noatime,nodiratime,nobarrier /dev/sdd /srv/node/z1d3
echo "/dev/sdd /srv/node/z1d3 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sde mklabel gpt
mkfs.xfs -f /dev/sde
mkdir -p /srv/node/z1d4
mount -o noatime,nodiratime,nobarrier /dev/sde /srv/node/z1d4
echo "/dev/sde /srv/node/z1d4 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdf mklabel gpt
mkfs.xfs -f /dev/sdf
mkdir -p /srv/node/z1d5
mount -o noatime,nodiratime,nobarrier /dev/sdf /srv/node/z1d5
echo "/dev/sdf /srv/node/z1d5 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdg mklabel gpt
mkfs.xfs -f /dev/sdg
mkdir -p /srv/node/z1d6
mount -o noatime,nodiratime,nobarrier /dev/sdg /srv/node/z1d6
echo "/dev/sdg /srv/node/z1d6 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdh mklabel gpt
mkfs.xfs -f /dev/sdh
mkdir -p /srv/node/z1d7
mount -o noatime,nodiratime,nobarrier /dev/sdh /srv/node/z1d7
echo "/dev/sdh /srv/node/z1d7 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdi mklabel gpt
mkfs.xfs -f /dev/sdi
mkdir -p /srv/node/z1d8
mount -o noatime,nodiratime,nobarrier /dev/sdi /srv/node/z1d8
echo "/dev/sdi /srv/node/z1d8 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdj mklabel gpt
mkfs.xfs -f /dev/sdj
mkdir -p /srv/node/z1d9
mount -o noatime,nodiratime,nobarrier /dev/sdj /srv/node/z1d9
echo "/dev/sdg /srv/node/z1d9 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdk mklabel gpt
mkfs.xfs -f /dev/sdk
mkdir -p /srv/node/z1d10
mount -o noatime,nodiratime,nobarrier /dev/sdk /srv/node/z1d10
echo "/dev/sdk /srv/node/z1d10 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdl mklabel gpt
mkfs.xfs -f /dev/sdl
mkdir -p /srv/node/z1d11
mount -o noatime,nodiratime,nobarrier /dev/sdl /srv/node/z1d11
echo "/dev/sdl /srv/node/z1d11 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdm mklabel gpt
mkfs.xfs -f /dev/sdm
mkdir -p /srv/node/z2d1
mount -o noatime,nodiratime,nobarrier /dev/sdm /srv/node/z2d1
echo "/dev/sdm /srv/node/z2d1 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdn mklabel gpt
mkfs.xfs -f /dev/sdn
mkdir -p /srv/node/z2d2
mount -o noatime,nodiratime,nobarrier /dev/sdn /srv/node/z2d2
echo "/dev/sdn /srv/node/z2d2 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdo mklabel gpt
mkfs.xfs -f /dev/sdo
mkdir -p /srv/node/z2d3
mount -o noatime,nodiratime,nobarrier /dev/sdo /srv/node/z2d3
echo "/dev/sdo /srv/node/z2d3 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdp mklabel gpt
mkfs.xfs -f /dev/sdp
mkdir -p /srv/node/z2d4
mount -o noatime,nodiratime,nobarrier /dev/sdm /srv/node/z2d4
echo "/dev/sdp /srv/node/z2d4 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdq mklabel gpt
mkfs.xfs -f /dev/sdq
mkdir -p /srv/node/z2d5
mount -o noatime,nodiratime,nobarrier /dev/sdq /srv/node/z2d5
echo "/dev/sdq /srv/node/z2d5 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdr mklabel gpt
mkfs.xfs -f /dev/sdr
mkdir -p /srv/node/z2d6
mount -o noatime,nodiratime,nobarrier /dev/sdm /srv/node/z2d6
echo "/dev/sdr /srv/node/z2d6 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sds mklabel gpt
mkfs.xfs -f /dev/sds
mkdir -p /srv/node/z2d7
mount -o noatime,nodiratime,nobarrier /dev/sds /srv/node/z2d7
echo "/dev/sds /srv/node/z2d7 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdt mklabel gpt
mkfs.xfs -f /dev/sdt
mkdir -p /srv/node/z2d8
mount -o noatime,nodiratime,nobarrier /dev/sdt /srv/node/z2d8
echo "/dev/sdt /srv/node/z2d8 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdu mklabel gpt
mkfs.xfs -f /dev/sdu
mkdir -p /srv/node/z2d9
mount -o noatime,nodiratime,nobarrier /dev/sdu /srv/node/z2d9
echo "/dev/sdu /srv/node/z2d9 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdv mklabel gpt
mkfs.xfs -f /dev/sdv
mkdir -p /srv/node/z2d10
mount -o noatime,nodiratime,nobarrier /dev/sdv /srv/node/z2d10
echo "/dev/sdv /srv/node/z2d10 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdw mklabel gpt
mkfs.xfs -f /dev/sdw
mkdir -p /srv/node/z2d11
mount -o noatime,nodiratime,nobarrier /dev/sdw /srv/node/z2d11
echo "/dev/sdw /srv/node/z2d11 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdx mklabel gpt
mkfs.xfs -f /dev/sdx
mkdir -p /srv/node/z3d1
mount -o noatime,nodiratime,nobarrier /dev/sdx /srv/node/z3d1
echo "/dev/sdx /srv/node/z3d1 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdy mklabel gpt
mkfs.xfs -f /dev/sdy
mkdir -p /srv/node/z3d2
mount -o noatime,nodiratime,nobarrier /dev/sdy /srv/node/z3d2
echo "/dev/sdy /srv/node/z3d2 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdz mklabel gpt
mkfs.xfs -f /dev/sdz
mkdir -p /srv/node/z3d3
mount -o noatime,nodiratime,nobarrier /dev/sdz /srv/node/z3d3
echo "/dev/sdz /srv/node/z3d3 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdaa mklabel gpt
mkfs.xfs -f /dev/sdaa
mkdir -p /srv/node/z3d4
mount -o noatime,nodiratime,nobarrier /dev/sdaa /srv/node/z3d4
echo "/dev/sdaa /srv/node/z3d4 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdab mklabel gpt
mkfs.xfs -f /dev/sdab
mkdir -p /srv/node/z3d5
mount -o noatime,nodiratime,nobarrier /dev/sdab /srv/node/z3d5
echo "/dev/sdab /srv/node/z3d5 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdac mklabel gpt
mkfs.xfs -f /dev/sdac
mkdir -p /srv/node/z3d6
mount -o noatime,nodiratime,nobarrier /dev/sdac /srv/node/z3d6
echo "/dev/sdac /srv/node/z3d6 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdad mklabel gpt
mkfs.xfs -f /dev/sdad
mkdir -p /srv/node/z3d7
mount -o noatime,nodiratime,nobarrier /dev/sdad /srv/node/z3d7
echo "/dev/sdad /srv/node/z3d7 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdae mklabel gpt
mkfs.xfs -f /dev/sdae
mkdir -p /srv/node/z3d8
mount -o noatime,nodiratime,nobarrier /dev/sdae /srv/node/z3d8
echo "/dev/sdae /srv/node/z3d8 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdaf mklabel gpt
mkfs.xfs -f /dev/sdaf
mkdir -p /srv/node/z3d9
mount -o noatime,nodiratime,nobarrier /dev/sdaf /srv/node/z3d9
echo "/dev/sdaf /srv/node/z3d9 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdag mklabel gpt
mkfs.xfs -f /dev/sdag
mkdir -p /srv/node/z3d10
mount -o noatime,nodiratime,nobarrier /dev/sdag /srv/node/z3d10
echo "/dev/sdag /srv/node/z3d10 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdah mklabel gpt
mkfs.xfs -f /dev/sdah
mkdir -p /srv/node/z3d11
mount -o noatime,nodiratime,nobarrier /dev/sdah /srv/node/z3d11
echo "/dev/sdah /srv/node/z3d11 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

parted -s /dev/sdai mklabel gpt
mkfs.xfs -f /dev/sdai
mkdir -p /srv/node/z3d12
mount -o noatime,nodiratime,nobarrier /dev/sdai /srv/node/z3d12
echo "/dev/sdai /srv/node/z3d12 xfs noatime,nodiratime,nobarrier,logbufs=8 0 0" >> /etc/fstab

chown -R swift:swift /srv/node /etc/swift
