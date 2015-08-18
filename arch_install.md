# PRE

- http://mindbending.org/pt/particionamento-com-o-fdisk-no-gnu-linux

```sh
loadkeys br-abnt2
ping archlinux.org
mount /dev/sda3 /mnt
mkdir /mnt/boot && mount /dev/sda1 /mnt/boot
mkdir /mnt/home && mount /dev/sda4 /mnt/home
pacstrap /mnt base base-devel
pacstrap /mnt grub-bios
genfstab -p /mnt >> /mnt/etc/fstab
echo archlinux-notebook > /etc/hostname
```

/etc/pacman.conf
```sh
[multilib]
SigLevel = PackageRequired
Include = /etc/pacman.d/mirrorlist
```

/etc/vconsole.conf
```sh
KEYMAP=br-abnt2
FONT=lat0-16
FONT_MAP=
```

/etc/locale.gen
```sh
en_US.UTF-8 UTF-8
en_US...
```

Executar:
```sh
locale-gen
```

/etc/locale.conf
```sh
LANG=en_US.UTF-8
LC_COLLATE=C
LC_TIME=en_US.UTF-8
```

Executar:
```sh
ln -s /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
```

```sh
mkinitcpio -p linux
grub-install /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg
passwd [root_pass]
umount /mnt/{boot,home,}
```

# POS

```sh
pacman-db-upgrade
pacman -Suy
pacman -S sudo
```

Em /etc/sudoers descomentar:
```sh
#%wheel  ALL=(ALL) ALL
```

- criar usuário

```sh
complete -cf sudo
alias sudo='sudo '
pacman -S xf86-video-intel xorg-server xorg-xinit xorg-utils xorg-server-utils ttf-dejavu ttf-bitstream-vera ttf-liberation openbox xscreensaver conky firefox chromium netctl dialog wpa_supplicant aspell-pt gstreamer0.10 gstreamer0.10-plugins gstreamer0.10-base gstreamer0.10-good gstreamer0.10-python gstreamer0.10-ugly tar gzip bzip2 unzip unrar p7zip vim tmux git zsh rxvt-unicode
```

Em /etc/pacman.conf:
```sh
[archlinuxfr]
Server = http://repo.archlinux.fr/$arch
```

Executar:
```sh
sudo pacman -Sy yaourt base-devel
yaourt -S faenza-icon-theme
```
