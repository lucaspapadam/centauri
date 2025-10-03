echo "macOS(1) or Arch?(2)"
read x
if [ "$x" == "1" ]; then
  clear
  echo "macos"
  clear
  echo "installing brew"
  sleep 1
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  clear
  brew install firefox discord neovim iina ghostty monitorcontroll obs
fi

if [ "$x" == "2" ]; then
  clear
  echo "Arch"
  sudo pacman -S git
  cd ~/
  git clone https://github.com/lucaspapadam/linux.git
  cd ~/linux/
  chmod +x start.sh
  ./start.sh
  rm -rf /home/$USER/linux/
fi



