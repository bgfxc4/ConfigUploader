#!/bin/sh
configspath_server="/home/marc/MebSite/Configs/testUploader";
configspath_local="/home/marc/.config/"

domain="marchat.zapto.org";
user="marc";
port="22";
password=$1

toreplace[0]="autostart";
toreplace[1]="betaflight-blackbox-explorer";
toreplace[2]="cef_user_data";
toreplace[3]="Code";
toreplace[4]="'Code - OSS'";
toreplace[5]="configstore";
toreplace[6]="cordless";
toreplace[7]="dconf";
toreplace[8]="discord";
toreplace[9]="discord-canary";
toreplace[10]="discord-overlay";
toreplace[11]="dleyna-renderer-service.conf";
toreplace[12]="dolphin-emu";
toreplace[13]="Electron";
toreplace[14]="epiphany";
toreplace[15]="evolution";
toreplace[16]="GIMP";
toreplace[17]="gnome-boxes";
toreplace[18]="gnome-control-center";
toreplace[19]="gnome-session";
toreplace[20]="goa-1.0";
toreplace[21]="google-chrome";
toreplace[22]="gtk-2.0";
toreplace[23]="gtk-3.0";
toreplace[24]="gtk-4.0";
toreplace[25]="ibus";
toreplace[26]="inkscape";
toreplace[27]="kritadisplayrc";
toreplace[28]="kritarc";
toreplace[29]="libreoffice";
toreplace[30]="menus";
toreplace[31]="mimeapps.list";
toreplace[32]="nautilus";
toreplace[33]="nemo";
toreplace[34]="obs-studio";
toreplace[35]="opera";
toreplace[36]="pavucontrol.ini";
toreplace[37]="pipewire-media-session";
toreplace[38]="procps";
toreplace[39]="pulse";
toreplace[40]="QtProject.conf";
toreplace[41]="systemd";
toreplace[42]="totem";
toreplace[43]="unity3d";
toreplace[44]="'Unity Hub'";
toreplace[45]="UnityHub";
toreplace[46]="user-dirs.dirs";
toreplace[47]="user-dirs.locale";
toreplace[48]="VirtualBox";
toreplace[49]="wireshark";
toreplace[50]="xfce4";
toreplace[51]="yapf";
toreplace[52]="yay";
toreplace[53]=".configold";

toupload[0]="compton";
toupload[1]="dunst";
toupload[2]="nvim";
toupload[3]="coc";
toupload[4]="polybar";
toupload[5]="xfce4";

toignore=""

IFS=$'\n'
for f in $(\ls -1 $configspath_local); do
	toignore+=$(echo -ne \"$f\",);
done

echo $(echo $toignore | sed -e 's/yay/A/g')

rsynccmd='rsync -e "ssh -p ${port}" -P -r ${configspath_local} ${user}@${domain}:${configspath_server}';


#${rsynccmd};
