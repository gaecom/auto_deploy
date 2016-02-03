#!/bin/bash

function createLvm {
	pvcreate /dev/vdb1
	vgcreate -s 16 vg1 /dev/vdb1
	lvcreate -n vg1 vdb1

}



#a. 扫描逻辑卷：
vgscan
#b. 激活扫描到的卷：
vgchange -a y $vol 
#c. 挂载
mount /dev/$vol/$dir /mnt