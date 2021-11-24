# Ubuntu System Setup

Important applications and modules to improve the workflow. Tested on Ubuntu
18.04 and 20.04.

## Dark themes

Go to settings -> appearance and select dark theme if available.

## Enable nighlight

Go to settings -> Display -> Night light and configure as per your needs.
Looking at screen at night distrubs the circadian rhythm and consequently
quality of quantity of sleep.

## Configuring software and updates

Open software and updates, and check the options as shown below. 
1. In ubuntu software, check canocical-supported, community maintained,
   proprietary drivers and software rectricted options.
2. In other software, check canonical partners.

## Fixing sound issue

If the headphone jack is producing sound, then edit the file
`/usr/share/pulseaudio/alsa-mixer/paths/analog-output-lineout.conf` and make the following changes. Restart required to
see the changes.

```
[Element Desktop Speaker]
switch = off
volume = off
```
to
```
[Element Desktop Speaker]
switch = on
volume = on
```
## Update and upgrade
```
sudo apt update && upgrade
```

## Terminator
```
sudo apt-get install terminator
```

* To add themes: [terminator-themes](https://github.com/EliverLara/terminator-themes)

* Splitting with profile
    ```
    Add under the [global config] section, 
    always_split_with_profile = True
    in the config file ~/.config/terminator/config
    ```
## Tmux

```
sudo apt install tmux
```

## Essential Softwares
1. VLC player - `sudo apt install vlc`
2. Todoist - `sudo snap install todoist`
3. Visual Studio code
4. Gitkraken


## Important packages
```
sudo apt install curl git-core zsh fonts-powerline python3-dev nodejs
sudo apt-get install tree
```

## Oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Replace the `.zshrc` file in home directory with the one on 
[rocketsumit zsh config](https://github.com/RocketSumit/my-ohmyzsh-config).
Some plugins may have to be manually installed.

```
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
```
```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

```

## Fira code font
Install fira code font : [link](https://github.com/tonsky/FiraCode)
Manually install the font by download the latest source release and installing individually in `ttf` folder.

## Neovim nightly
```
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim
```

## Conda - python package manager 
1. Install miniconda
2. Intialize conda for different shell other than bash : `conda init zsh`

Install [vimplug](https://github.com/junegunn/vim-plug)

## Pip - another package manager (Conda is recommended)
```
sudo apt install python3-pip
```

## Jupyter lab

```
conda install -c conda-forge jupyterlab
```

To use vim bindings with custom key mappings, use jupyter notebook instead of jupyter lab. The following extensions need to be installed.
- [jupyterthemes](https://github.com/dunovank/jupyter-themes)
- [vimbindings](https://github.com/lambdalisue/jupyter-vim-binding)

After installation, first set the theme using `jt -t monokai -f fira -fs 14 -nfs 12 -tfs 12 -ofs 13 -cursc 'g' -altp -T -N -kl -cellw 88%
` command on the terminal. 

Then, paste the following lines in `~/.jupyter/custom/custom.css` file.
```
/* Jupyter cell is in normal mode when code mirror */
.edit_mode .cell.selected .CodeMirror-focused.cm-fat-cursor {
  background-color: #2f2f2f !important;
}
/* Jupyter cell is in insert mode when code mirror */
.edit_mode .cell.selected .CodeMirror-focused:not(.cm-fat-cursor) {
  background-color: #2f2f2f !important;
}
```
Finally, paste the following lines in `~/.jupyter/custom/custom.js` file.

```
require([
  'nbextensions/vim_binding/vim_binding',   // depends your installation
], function() {
  // Map jj to <Esc>
  CodeMirror.Vim.map("jk", "<Esc>", "insert");
  CodeMirror.Vim.map("L", "<Plug>(vim-binding-$)", "normal");
  CodeMirror.Vim.map(";", "<:>", "normal");
});

require([
  'nbextensions/vim_binding/vim_binding',
  'base/js/namespace',
], function(vim_binding, ns) {
  // Add post callback
  vim_binding.on_ready_callbacks.push(function(){
    var km = ns.keyboard_manager;
    // Indicate the key combination to run the commands
    km.edit_shortcuts.add_shortcut('ctrl-s', 'jupyter-notebook:save-notebook', true);
    // Update Help
    km.edit_shortcuts.events.trigger('rebuild.QuickHelp');
  });
});

require(['nbextensions/vim_binding/vim_binding'], function() {
    CodeMirror.Vim.defineOperator("comment_op", function(cm) {
        cm.toggleComment();
    });
    CodeMirror.Vim.mapCommand("gc", "operator", "comment_op", {});
});

require([
  'nbextensions/vim_binding/vim_binding',
  'base/js/namespace',
], function(vim_binding, ns) {
  // Add post callback
  vim_binding.on_ready_callbacks.push(function(){
    var km = ns.keyboard_manager;
    // Indicate the key combination to run the commands
    km.edit_shortcuts.add_shortcut('Esc', CodeMirror.prototype.leaveNormalMode, true);

    // Update help
    km.edit_shortcuts.events.trigger('rebuild.QuickHelp');
  });
});
```
## Albert launcher - spotlight for ubuntu

[Install link](https://albertlauncher.github.io/installing/)

## Safe eyes
```
sudo apt install safeeyes
```
## Time shift - backup
[Installation](https://github.com/teejee2008/timeshift)

## Preload - performance booster
```
sudo apt install preload
```
## Photo editor - GIMP
```
sudo apt install gimp
```
### Software package manager
```
sudo apt install synaptic
```

### Disk manager
```
sudo apt install gparted
```

## Firefox performance booster (if GPU available)

Open firefox, go to address `about:config`, and them toggles the values of below settings to true. These enables use of GPU to render webpages in firefox making scrolling and loading big websites smooth.
```
layers.acceleration.force-enabled
gfx.webrender.all
```
## GNOME tweaks and extensions

```
sudo apt install gnome-shell-extensions
```
GNOME tweak comes installed with Ubuntu 20.04 or else can be installed using sudo apt-get[[. There are various extension that can be installed to customize your system [(link)](https://extensions.gnome.org/). One handy extension is Dash to Dock.

## Media codecs - for wide range of support for media files (if needed)
Ubuntu media codecs - these packages are not avialable out of the box due to legal issues.
```
sudo apt install ubuntu-restricted-extras
```
## Kdenlive video editor
```
sudo add-apt-repository ppa:kdenlive/kdenlive-stable
sudo apt update
sudo apt install kdenlive
```
## Cleaning linux 
```
sudo apt install beachbit
```
Use beachbit to clean system once every 6 months or a year to gain perfomance improvements and remove junk. 

## Stacer - for system monitoring and cleaning
```
sudo apt install stacer
```
