IMG_ID=$(docker build -q .)
CONTAINER_ID=$(docker run -td $IMG_ID /bin/bash)

MOUNTDIR=/mnt
FS=../images/ubuntu_2204.ext4

mkdir $MOUNTDIR
qemu-img create -f raw $FS 1024M
mkfs.ext4 $FS
mount $FS $MOUNTDIR
docker cp $CONTAINER_ID:/ $MOUNTDIR
umount $MOUNTDIR
