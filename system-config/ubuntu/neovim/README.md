
# Required packages
Follow the setting up ubuntu instruction before setting the neovim. 
- Required packages: curl, git, nodejs, npm, pynvim. 

# Setup
Here's how to use it. Do not blindly copy it but cherry pick as per your usage.

1. Make a clean installation of neovim. Remove older neovim configs and plugins.
2. Install [vim-plug](https://github.com/junegunn/vim-plug).
3. Place `init.vim` and `plugged.vim` in `~/.config/nvim/`. Create this folder if it doesn't exist.
4. Launch `nvim` (I have it aliased to `vim` in .zshrc) and run `:PlugInstall`
5. Once the plugins are installed  `:q` out of the Plug installation window, and enjoy!

# Additional information
I have also configured to use neovim in vscode. The neovim version supported may differ in vscode, hence, check with vscode for supported versions if you like to have it work for vscode as well.