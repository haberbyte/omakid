set -e

ascii_art='________                  __        ___.
\_____  \   _____ _____  |  | ____ _\_ |__
 /   |   \ /     \\__   \ |  |/ /  |  \ __ \
/    |    \  Y Y  \/ __ \|    <|  |  / \_\ \
\_______  /__|_|  (____  /__|_ \____/|___  /
        \/      \/     \/     \/         \/
'

echo -e "$ascii_art"
echo "=> Omakub is for fresh Ubuntu 24.04 installations only!"
echo -e "\nBegin installation (or abort with ctrl+c)..."

sudo apt-get update >/dev/null
sudo apt-get install -y git software-properties-common python3-launchpadlib >/dev/null

echo "Cloning Omakub..."
rm -rf ~/.local/share/omak{ub,id}
git clone https://github.com/haberbyte/omakid.git ~/.local/share/omakid >/dev/null
ln -s ~/.local/share/omakid ~/.local/share/omakub

echo "Installation starting..."
source ~/.local/share/omakid/install.sh
