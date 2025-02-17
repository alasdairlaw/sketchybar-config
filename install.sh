echo "Installing Dependencies"

# Packages
brew install lua
brew install switchaudio-osx
brew install nowplaying-cli
brew tap FelixKratz/formulae
brew install sketchybar

# Fonts
brew install --cask sf-symbols
brew install --cask font-sf-mono
brew install --cask font-sf-pro
curl -L https://github.com/kvndrsslr/sketchybar-app-font/releases/download/v2.0.32/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf

# SbarLua
(git clone https://github.com/FelixKratz/SbarLua.git /tmp/SbarLua && cd /tmp/SbarLua/ && make install && rm -rf /tmp/SbarLua/)

# Config
echo "Cloning Config"
git clone https://github.com/TheGoldenPatrik1/sketchybar-config /tmp/sketchybar
mv $HOME/.config/sketchybar $HOME/.config/sketchybar_backup
mv /tmp/sketchybar $HOME/.config/sketchybar

# Restart
brew services restart sketchybar