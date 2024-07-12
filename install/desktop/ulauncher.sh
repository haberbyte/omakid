cd /tmp
wget https://github.com/Ulauncher/Ulauncher/releases/download/5.15.7/ulauncher_5.15.7_all.deb
sudo apt install -y ./ulauncher_5.15.7_all.deb
rm ./ulauncher_5.15.7_all.deb
cd -

# Start ulauncher to have it populate config before we overwrite
mkdir -p ~/.config/autostart/
cp ~/.local/share/omakub/configs/ulauncher.desktop ~/.config/autostart/ulauncher.desktop
gtk-launch ulauncher.desktop >/dev/null 2>&1
sleep 2 # ensure enough time for ulauncher to set defaults
cp ~/.local/share/omakub/configs/ulauncher.json ~/.config/ulauncher/settings.json
