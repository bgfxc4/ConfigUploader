#!/bin/sh
configspath_server="/home/marc/MebSite/Configs/";
configspath_local="/home/marc/.config/"

domain="marchat.zapto.org";
user="marc";
port="22";

toupload[0]="compton";
toupload[1]="dunst";
toupload[2]="nvim";
toupload[3]="coc";
toupload[4]="polybar";
toupload[5]="xfce4";

alluploads="";

for i in "${toupload[@]}"
do
	alluploads+=" $configspath_local$i";
done

rsync -r -P $alluploads $user@$domain:$configspath_server
