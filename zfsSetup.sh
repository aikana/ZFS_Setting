# stroe disk block list in block_list.txt
lsblk > block_list.txt

# create zpool with the name 
sudo zpool create -f FileStorage raidz /dev/sda /dev/sdb /dev/sdc

# destroy zpool
sudo zpool destroy FileStorage

# create 1st partition, set raidz, name as FileStorage
sudo zpool create -f FileStorage raidz /dev/sda /dev/sdb /dev/sdc

# add 2nd partition
sudo zpool add -f FileStorage raidz /dev/sdd /dev/sde /dev/sdf

# add 3rd partition
sudo zpool add -f FileStorage raidz /dev/sdg /dev/sdh /dev/sdi

# status check
sudo zpool status
sudo zpool list
