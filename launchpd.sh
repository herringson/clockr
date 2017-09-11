#This script will start Pd in nogui
# mode and will open the patch
# named "simpler_clockr.pd"
echo "Starting Pd..."
pd -nogui -audiodev 0 -mididev 0  /home/pi/clockr/clockr.pd &

#Uncomment these lines to pause and then connect ALSA MIDI
#sleep 500
##echo "Connecting pd to Alsa MIDI"
#aconnect 128 20 &
