#Dryer Status Monitor originally by Breakoutbros.com but the site has since died.
The old website can be viewed on Archive.org:
https://web.archive.org/web/20161124180204/http%3A//www.breakoutbros.com/web-enabled-dryer-monitor-for-the-raspberry-pi/

The steps are basically:
- Connect the vibration sensor to 3.3V/5V, Ground and GPIO21 (to avoid changing the Python script)
- Install vanilla Raspbian/Raspberry Pi OS on a Pi (I used a Pi Zero W) and connect it to the network (add an ```ssh``` file and ```wpa_supplicant.conf``` to do this headless)
- Install GIT using ```sudo apt install git -y```
- Clone the repository (I cloned into the default /home/pi folder) by running ```git clone https://github.com/Vorsku/dryer-status-monitor.git```
- Running the ```build.sh``` script should do the rest
