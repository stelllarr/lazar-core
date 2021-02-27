#!/bin/bash
# lazar-min for debian

echo "Lazar - Starting..."
cd /home/$USER
mkdir lazar
sudo apt update -y
cd lazar
touch lazar.log.txt
cat "started lazar..." >> lazar.log.txt
echo "Logged to lazar.log.txt - Starting wizard..."
read -p "Install GIMP? (y/n)?" GIMP
if [ "$GIMP" = "y" ]; then
  echo "Installing gimp from apt..."
  sudo apt install gimp -y
else
  echo "Skipped gimp install..."
fi

read -p "Install GNOME & GDM? (y/n)?" GNOME
if [ "$GNOME" = "y" ]; then
  echo "Installing gnome from apt..."
  sudo apt install gnome-session gdm3 -y
else
  echo "Skipped gnome install..."
fi

read -p "Install NPM? (y/n)?" NPM
if [ "$NPM" = "y" ]; then
  echo "Installing gnome from apt..."
  sudo apt install npm -y
else
  echo "Skipped npm install..."
fi

read -p "Install Node? (y/n)?" NODE
if [ "$NODE" = "y" ]; then
  echo "Installing gnome from apt..."
  sudo apt install nodejs -y
else
  echo "Skipped node install..."
fi

echo "Thanks for testing Lazar, we hope you enjoy it!"
