# Required packages

Follow the setting up ubuntu instruction before setting the neovim. 
- Required packages: curl, git, nodejs, npm, pynvim. 

# Setup process

Here's how to use it. Do not blindly copy it but cherry pick as per your usage.

1. Make a clean installation of neovim. Remove older neovim configs and plugins.
2. Install [vim-plug](https://github.com/junegunn/vim-plug).
3. Place `init.vim` and `plugged.vim` in `~/.config/nvim/`. Create this folder if it doesn't exist.
4. Launch `nvim` (I have it aliased to `vim` in .zshrc) and run `:PlugInstall`
5. Once the plugins are installed  `:q` out of the Plug installation window, and enjoy!
6. If you need to update Nodejs, follow instruction [here](https://github.com/nodesource/distributions/blob/master/README.md). I currently use the v16. Other references: [https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04](https://www.digitalocean.com/community/tutorials/how-to-install-node-js-on-ubuntu-20-04).

# Install noevim

## Neovim from appimage (recommended)

Remember to export the app image to expose it globally.

[Link](https://github.com/neovim/neovim/wiki/Installing-Neovim)

```
./nvim.appimage --appimage-extract
./squashfs-root/AppRun --version

# Optional: exposing nvim globally
mv squashfs-root / 
ln -s /squashfs-root/AppRun /usr/bin/nvim
nvim
```

## Neovim nightly (from ppa)
```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

# Additional information

I have also configured to use neovim in vscode. The neovim version supported may differ in vscode, hence, check with vscode for supported versions if you like to have it work for vscode as well.
