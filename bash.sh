# fetch archlinux32 installer
wget https://mirror.archlinux32.org/archisos/archlinux32-2021.12.01-i686.iso

# Create a 10 gigabyte disk image. If you intend to pacstrap only 'base' then 1.5G should be fine also.
qemu-img create arch.img 10G

# Follow the normal installation process (you can add accel=kvm if your system supports it to speed up the installation)
qemu-system-x86_64 -m 512 -drive file=arch.img,format=raw -cdrom archlinux32-2021.12.01-i686.iso