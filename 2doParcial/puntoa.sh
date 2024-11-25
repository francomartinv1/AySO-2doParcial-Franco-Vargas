sudo fdisk /dev/sdc
sudo mkswap /dev/sdc1
sudo swapon /dev/sdc1
cat /proc/swaps

sudo fdisk /dev/sdc
sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6
sudo pvs

sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
sudo vgs

sudo lvcreate -L 1.9G vgAdmin -n lvAdmin

sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
sudo lvcreate -L 1G vgDevelopers -n lvTesters
sudo lvcreate -L 8G vgDevelopers -n lvDevops

sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops
sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin

sudo mkdir /mnt/lvDevelopers
sudo mkdir /mnt/lvTesters
sudo mkdir /mnt/lvDevops
sudo mkdir /mnt/lvAdmin

sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers
sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters
sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops
sudo mount /dev/mapper/vgAdmin-lvAdmin /mnt/lvAdmin

