## Installation guide

1. Install prerequisite packages
    ```
    sudo apt install git-core zsh
    ```
2. Install Oh-My-Zsh from [Robby Russell’s repository] (https://github.com/ohmyzsh/ohmyzsh)
3. Install the Powerline font to spice up your CLI with icons
    ```
    sudo apt install fonts-powerline
    ```
4. Replace `~/.zshrc` file with this repository's file. 
5. Set zsh as our default shell. Execute this in your default shell, in most cases this will be bash. If you execute this command in zsh, it won’t change anything:
    ```
    chsh -s $(which zsh)
    ```
6.  Some plugins may have to be manually installed.
    ```
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
    ```
    ```
    git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
    ```
## Aditional information
[Guide](https://medium.com/wearetheledger/oh-my-zsh-made-for-cli-lovers-installation-guide-3131ca5491fb)