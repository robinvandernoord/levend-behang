#!/bin/bash
set -e

# download flowy executable to ~/.dynwal
echo "installing flowy"
mkdir ~/.dynwal/images -p
sudo mkdir /opt/dynwal -p
wget https://github.com/vineetred/flowy/releases/download/0.4.0/flowy_linux_gnu.zip
unzip flowy_linux_gnu.zip
rm flowy_linux_gnu.zip
chmod +x flowy
sudo mv flowy /opt/dynwal

sudo cp flowy.service /etc/systemd/user/
systemctl --user enable flowy
systemctl --user start flowy

# if there is no 'heic' executable, compile it with 'build-heic-js'
echo "installing heic"
sudo cp convert heic /opt/dynwal/
sudo cp heic.desktop /usr/share/applications/
# cp heic.desktop ~/.local/share/applications/
# chmod +x ~/.local/share/applications/heic.desktop

xdg-mime default heic.desktop image/heif
echo "installation done"
