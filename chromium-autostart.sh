#!/bin/dash

# Resolution to use for kiosk mode, should ideally match current system resolution
RES_X=$(< /sys/class/graphics/fb0/modes cut -d":" -f2 | cut -d"x" -f1)
RES_Y=$(< /sys/class/graphics/fb0/modes cut -d"x" -f2 | cut -d"p" -f1)

# Command line switches: https://peter.sh/experiments/chromium-command-line-switches/
# - Review and add custom flags in: /etc/chromium.d
CHROMIUM_OPTS="--kiosk --window-size=${RES_X:-1280},${RES_Y:-720} --window-position=0,0"

# If you want tablet mode, uncomment the next line.
#CHROMIUM_OPTS+=' --force-tablet-mode --tablet-ui'

# Home page
URL=http://casaos.local

# RPi or Debian Chromium package
FP_CHROMIUM=$(command -v chromium-browser)
[ "$FP_CHROMIUM" ] || FP_CHROMIUM=$(command -v chromium)

# Use "startx" as non-root user to get required permissions via systemd-logind
STARTX='xinit'
[ "$USER" = 'root' ] || STARTX='startx'

exec "$STARTX" "$FP_CHROMIUM" $CHROMIUM_OPTS "${URL}"
