#!/usr/bin/bash
clear
echo
echo
echo
echo
echo
figlet -f slant "YTDownload" | lolcat
echo
echo "[ A ] Download Now!" | lolcat
echo "[ B ] Install Requests" | lolcat
echo
read -p "</DarKoders> " y

if [ $y = A ] || [ $y = a ]
then
  cd /sdcard/YTDownloader/ytdl
  python2 yt.py
fi
if [ $y = B ] || [ $y = b ]
then
  cd
  mkdir YTDownloader
  cp -rf YTDownloader /sdcard
  cd /sdcard/YTDownloader
  python2 instale.py
else
     echo "NOTING OPTIONAL $y"
     sleep 0.4
     echo "Relogin In 2 Sec.."
     sleep 2
     bash start.sh
fi

