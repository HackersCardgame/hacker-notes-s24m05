#!/bin/bash

#Script Template
#==============================================================================
#title           :
#description     :
#author		 :Marc Landolt, Twitter: @PinkyDef / Github: @braindef
#date            :
#version         :0.1
#usage		 :
#notes           :
#bash_version    :
#==============================================================================


# Define Editor
#==============================================================================
#EDITOR=$(which nano)
EDITOR=$(which vim)
#==============================================================================


# Color Definitions
#==============================================================================
red="\e[91m"
yellow="\e[0;33m"
green="\e[0;32m"
default="\e[39m"
#==============================================================================

echo "
#deb cdrom:[Debian GNU/Linux 12.5.0 _Bookworm_ - Official amd64 DVD Binary-1 with firmware 20240210-11:28]/ bookworm contrib main non-free-firmware

deb https://deb.debian.org/debian bookworm main contrib non-free non-free-firmware
deb-src https://deb.debian.org/debian bookworm main contrib non-free non-free-firmware

deb https://deb.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware
deb-src https://deb.debian.org/debian-security bookworm-security main contrib non-free non-free-firmware

deb https://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware
deb-src https://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware
"

# Helper Function for YES or NO Answers
#------------------------------------------------------------------------------
# Example YESNO "Question to ask" "command to be executed"
#==============================================================================
function YESNO {
echo -e -n "
${red}$1 [y/N]${default} "
read -d'' -s -n1 answer
echo
if  [ "$answer" = "y" ] || [ "$answer" = "Y" ]
then
return 0
else
echo -e "
"
return 1
fi
}
#==============================================================================

apt-get update
apt-get upgrade
apt-get install -y screen
apt-get purge firefox-esr
apt-get install -y epiphany-browser
apt-get install -y git vim sudo gnome-boxes figlet inkscape gedit mixxx 
apt-get install -y libvirt-daemon-system 
apt-get install -y ffmpeg
apt-get install -y kdenlive
apt-get install -y obs-studio
apt-get install -y tesseract-ocr
apt-get install -y nvidia-detect
apt-get install -y locate
updatedb
apt-get install -y apt-file
apt-file update
apt-get install -y espeak-ng
apt-get install -y callibre
apt-get install -y iotop

apt-get install cups-client
apt-get install tesseract-ocr-eng tesseract-ocr-deu

echo "printer installieren"
echo ""
echo "printer installieren"
echo ""
echo "printer installieren"
echo ""
echo "printer installieren"
echo ""
echo "printer installieren"

nvidia-detect

# edit repository list
#==============================================================================
if YESNO "install nvidia-tesla-470-driver ???"
then
  apt-get install nvidia-tesla-470-driver
fi
