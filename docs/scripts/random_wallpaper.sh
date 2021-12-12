# randomises my wallpaper
WALL=`/bin/ls ~/.config/wallpapers/*.png | shuf -n 1`
cp $WALL ~/.config/wallpapers.png
command wal -i $WALL
xwallpaper --zoom $WALL
