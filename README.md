# ZFS_Setting

Centos 7 base repository doesn't include zfs repo.
01. 20. 2017. 
Edited Zaizhen Lim

1. ZFSInstall.sh : to install zfs software pakage and check the module loaded. If there is any error in loading zfs, check comment inside of sh file.

2. ZFSSetup.sh : to setup zpool by commonly used option, raidz(similar version of raid-5) with 3 seperated part of whole disk(disk setup should be changed based on your number of disk.)
