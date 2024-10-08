
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
sudo systemctl enable tlp.service
```
#### Check your batttery name
```
tlp-stat -b
```

```
+++ Battery Status: BATT
/sys/class/power_supply/BATT/manufacturer                   = ASUSTeK
/sys/class/power_supply/BATT/model_name                     = UM3402
/sys/class/power_supply/BATT/cycle_count                    =    146
/sys/class/power_supply/BATT/charge_full_design             =   9420 [mAh]
/sys/class/power_supply/BATT/charge_full                    =   8479 [mAh]
/sys/class/power_supply/BATT/charge_now                     =   5850 [mAh]
/sys/class/power_supply/BATT/current_now                    =   1689 [mA]
/sys/class/power_supply/BATT/status                         = Charging
```

#### Set charge limit
```
sudo tlp setcharge 0 60 BATT
```

### Set charge limit in config
```
sudo nano /etc/tlp.d/00-template.conf

STOP_CHARGE_THRESH_BAT0="60"
#STOP_CHARGE_THRESH_BAT1="65"

```

### Disable & enable webcam
```
modprobe -r uvcvideo
modprobe uvcvideo
```

### Disable webcam permanently

```
Add blacklist end of the file
sudo nano /etc/modprobe.d/blacklist.conf

blacklist uvcvideo
```

### Disable bluetooth on startup
```
/etc/bluetooth/main.conf

AutoEnable=false
```

### Disable wireless powersaving
```
nano /etc/NetworkManager/conf.d/default-wifi-powersave-on.conf

[connection]
wifi.powersave = 2
```


