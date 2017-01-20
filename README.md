# ZFS_Setting

# Centos 7 base repository doesn't include zfs repo.
# add repositories related to ZFS/ZPOOL/Kernel headers

sudo rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-2.el7.elrepo.noarch.rpm
sudo rpm -Uvh http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo rpm -Uvh https://forensics.cert.org/cert-forensics-tools-release-el7.rpm
sudo rpm -Uvh http://download.zfsonlinux.org/epel/zfs-release.el7_3.noarch.rpm

# after setting repo, update the yum program and install required programs

sudo yum update -y
sudo yum groupinstall -y "Development Tools" "Development Libraries" "Additional Development"
sudo yum install -y kernel-devel kernel-headers zfs

# module upload
sudo /sbin/modprobe zfs
# if there is the ZFS module load errors occur in this time, check kernel-headers and zfs/spl version are matched
# for kernel-headers, command "uname -r", plus, even though you updated this, and installed the software in usr/etc/
# the system should be reloaded by anyway such as reboot to reach new version kernel.
# for zfs/spl version, command "dkms status"

# you can just copy this readme.md file to xxx.sh file in linux (centos system) and command "sh xxx.sh" to run it in one time.
