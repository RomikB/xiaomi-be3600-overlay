#/bin/sh

rm /etc/opkg/distfeeds.conf

mount -t overlay etc_overlay -o lowerdir=/etc,upperdir=/data/overlay/etc,workdir=/data/overlay/.etc /etc
mount -t overlay usr_overlay -o lowerdir=/usr,upperdir=/data/overlay/usr,workdir=/data/overlay/.usr /usr

for sec_cfg_dir in config crontabs datacenterconfig mipctl parentalctl ppp smartcontroller smartvpn; do
    mount --bind /data/etc/$sec_cfg_dir/ /etc/$sec_cfg_dir/
done
