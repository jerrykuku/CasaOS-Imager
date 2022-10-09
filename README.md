# CasaOS-Imager

### Replace Banner

``` bash
rm -rf /boot/dietpi/func/dietpi-banner
wget https://raw.githubusercontent.com/jerrykuku/CasaOS-Imager/main/dietpi-banner -O /boot/dietpi/func/dietpi-banner
chmod +x /boot/dietpi/func/dietpi-banner
```

### How To Use

``` bash
bash -c "$(curl -sSfL 'https://raw.githubusercontent.com/jerrykuku/CasaOS-Imager/main/casaos-imager')"
```