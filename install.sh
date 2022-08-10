# install stow
sudo apt-get install stow

# backup bashrc
mv ~/.bashrc ~/.bashrc.pre.stow

# link only folders (trailing slash)
stow -v -t ~ */
