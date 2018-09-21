Energy NRG addon to "Remote-rig-restarting"
---

This repository enables you to monitor the Energy-miner v2 with the Remote-rig-restartin scripts.  
For this to work you have to run the miner whitin a tmux session.  


Files:

crontab.txt:  Add the two lines to your /etc/crontab file to start the miner and the monitoring script at reboot.

nrgMon.sh:    The monitoring script.  It listens to port 3333, if it detects incomming traffic it responds.

startminingnrg.sh: The script that starts the miner in a tmux session


In adition you need the Remote-rig-restarting repo running on a webserver (preferably on a Raspberry pi in your lan), see the project for details.

---------------

Installation:

Crontab

Edit your crontab file 
Open a terminal window / ssh to your rig

```sudo pico /etc/crontab ```

Copy the and edit the lines below to the end of your file:
```
# Start energy-miner v2 hash monitor on reboot
 @reboot root /path/to/script/nrgMon.sh

# Energi Solo
 @reboot root /path/to/script/startminingnrg.sh
```
Press crtl + x to save and exit

---

startminingnrg.sh

Copy the file to some appropriate palce.

Make the script runnable:

``` chmod 755 startminingnrg.sh ```

Edit the path to you miner

-----

nrgMon.sh:

Copy the file to some appropriate palce

Make the script runnable:

``` chmod 755 nrgMon.sh ```

-----

Restart the rig for things to happen.  You can check if the miner is running by opening a terminal on the rig and enter the command below:

```sudo tmux attach ```

Exit tmux window by hitting
``` crtl+b d ```

To check if the monitoring script is running enter in a terminal:

``` ps -ax | grep nrg* ```


If you don't have tmux installed install it with the lines below (Ubuntu)
 ```
 sudo apt-get update
 sudo apt-get install tmux
```
