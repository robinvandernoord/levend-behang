echo "installing flowy"
mkdir ~/.dynwal/images -p
cd ~/.dynwal/
wget https://github.com/vineetred/flowy/releases/download/0.4.0/flowy_linux_gnu.zip
unzip flowy_linux_gnu.zip
rm flowy_linux_gnu.zip
chmod +x flowy

cd -
echo "installing heic"
cp convert heic ~/.dynwal/
echo "Sudo password required to setup file association:"
sudo cp heic.desktop /usr/share/applications/
xdg-mime default heic.desktop image/heif
echo "installation done"
