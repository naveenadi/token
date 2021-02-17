#! /bin/sh

set -e

reset="\033[0m"
red="\033[31m"
green="\033[32m"
yellow="\033[33m"
cyan="\033[36m"
white="\033[37m"

# Detect platform
if [[ $OSTYPE == "linux-gnu" ]]; then
  PLATFORM="linux"
elif [[ $OSTYPE == "darwin"* ]]; then
  PLATFORM="macos"
else
  echo "$red Sorry, there's no Setup installer available for this platform."
  exit 1
fi

# local DISTRIB=$(awk -F= '/^NAME/{print $2}' /etc/os-release)
OS=$(source /etc/os-release && echo "${ID}")
case $OS in
	"debian" | "ubuntu" | "linuxmint" | "pop")
		sudo apt update
    # if uname -a | grep -q '^Linux.*Microsoft'; then
    #   # ubuntu via WSL Windows Subsystem for Linux
    # else
    #   # native ubuntu
    # fi
		;;
	"arch" | "manjaro")
    echo -e "${cyan}Executing installation script!"
		sudo pacman -Syu docker --noconfirm
		;;
	"fedora" | "centos")
		sudo dnf install -y
		;;
	*)
		echo -e "${red}System can't be defined."
		exit
		;;
esac

echo -e "${cyan}Executing installation script!"
curl -fsSL https://get.docker.com -o get-docker.sh

# Run Docker without root
sudo usermod -aG docker $USER

# Enable docker service whenever system is reboot
sudo systemctl start docker.service
sudo systemctl enable docker.service