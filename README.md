# CasaOS-Imager

## Use Base OS

### Replace Banner

``` bash
rm -rf /boot/dietpi/func/dietpi-banner
wget https://raw.githubusercontent.com/jerrykuku/CasaOS-Imager/main/dietpi-banner -O /boot/dietpi/func/dietpi-banner
chmod +x /boot/dietpi/func/dietpi-banner
```

### AutoStart

``` bash
apt install xserver-xorg-video-fbdev  # for N5105
```

### Change Chrome init res
``` bash
# /var/lib/dietpi/dietpi-software/installed/chromium-autostart.sh
RES_X=$(cat /sys/class/graphics/fb0/modes | cut -d":" -f2 | cut -d"x" -f1)
RES_Y=$(cat /sys/class/graphics/fb0/modes | cut -d"x" -f2 | cut -d"p" -f1)
```

### Add Chinese Font

``` bash
apt install fonts-wqy-microhei
```

## Use New Dietpi OS
### Make Image

``` bash
bash -c "$(curl -sSfL 'https://raw.githubusercontent.com/jerrykuku/CasaOS-Imager/main/casaos-imager')"
```
