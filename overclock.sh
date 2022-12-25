#These scripts were tested and actively used on debian 10 systems. In ubuntu systems however, we didn't need those XAUTHORITY codes.
#Cut this script into smaller pieces if you need, or enable running this with chmod +x overclock.sh and simply run it this way.

DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-settings -a [gpu:0]/GPUFanControlState=1;
#Enable fan control of GPU 0.
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-settings -a [fan:0]/GPUTargetFanSpeed=60;
#Set fan speed of GPU 0 to %60.
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/:0 sudo nvidia-settings --assign [gpu:0]/GPUMemoryTransferRateOffset[2]=700;
#Increase memory speed of GPU 0 by +700 mhz.
sudo nvidia-smi -i 0 -pl 230;

#Set power limit of GPU 0 to 230 watts. This is especially useful as it decreases
#the heat output. It will simply be less hot but still the same amount of hashrate.
