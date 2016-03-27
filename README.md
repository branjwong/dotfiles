# dotfiles
# idea ripped from https://github.com/gotbletu/dotfiles

### Fresh Install Info
    sudo apt-get install stow git 
    cd ~/Public
    git clone https://github.com/branjwong/dotfiles.git
    mkdir -p ~/Downloads/stowbackup
    mv ~/.bashrc ~/Downloads/stowbackup
    # symlink all files in dotfiles dir to home dir
    cd ~/Public/dotfiles
    
    # link only folders (trailing slash)
    stow -v -t ~ */
        # delete (-D flag)
        stow -v -D -t ~ */
        stow -v -D -t ~ tmux
        # redo link (-R)
        stow -v -R -t ~ */
        stow -v -R -t ~ tmux

    
### Essentials
    htop vim tmux curl fzf

### CLI
       
### GUI
    subl 

### Programming
    node npm elm elm-css pm2
