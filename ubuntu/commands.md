
#### Shutdown after 120 minutes
```
shutdown -P 120
```

#### Turn off keyboard light
```
echo 0 > /sys/class/leds/asus::kbd_backlight/brightness
```

#### Change display brightness

```
xrandr --output eDP --brightness .45
```

#### Change display brightness with brightnessctl:
```
brightnessctl set 10%
```
