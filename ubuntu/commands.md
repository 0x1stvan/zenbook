
#### Shutdown after 120 minutes
```
shutdown -P 120
```

#### Turn off keyboard light
```
echo 0 > /sys/class/leds/asus::kbd_backlight/brightness
```

#### Change display brightness with brightnessctl:
```
brightnessctl set 10%
```

### Set battery charge limit to 60% with tlp (https://linrunner.de/tlp/index.html):
```
sudo add-apt-repository ppa:linrunner/tlp
sudo apt update
sudo apt install tlp tlp-rdw
sudo tlp start
sudo tlp setcharge 0 60 BATT
```
