# machfiles
0) Need to check installation order to garante that the software will be installed before stow command

sudo pacman -Sy archlinux-keyring -- if error during pacman -Syu
sudo pacman -S git stow zsh zsh-completions
git clone https://github.com/gui-bonnis/machfiles.git ~/

cd machfiles

stow alacritty/
stow dmenu-5.1/
stow dwm-6.3/
stow dwmblocks/
stow fontconfig/
stow lazygit/
stow neovim/
stow picom/
stow zsh/

1) Basic folder created
2) X folder created
  - Need to fix xprofile file. For now all config are being load from .xinitrc

3) Zsh Installed
  - Need to check all configurations, plugins and other stuff to check as item done

4) Zoxide for Z system navigation Installed
pacman -S zoxide fzf

5) DWM Basic git repo Installed
6) Next DWMBlocks 
7) Next is ST
8) Picom configured
pacman -S picom

9) Nitrogen Installed and configured
10) Alacritty Installed and configured
11) Lazygit Installed
12) Nerdfont installed
	fc-cache -f -v
13) Need to check font config
14) Neofetch installed
15) YAY 
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
16) Paru
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si


vifm
pulse audio
pavucontrol
viweb
gohtop
bottom (btm)


Ideas
1) Create a script to initiate git repo and start any new project using any template (test, ci/cd, code as infra, so on...) plus git ignore and commit it

2) create run default config for java prod mode and debug mode
3) java coding configuration
  Create menu for refactoring
4) Execute code lint and code Sonar verification at some point
5) Execute test when editin test file, need to determine better the event 

20) Create menu for file manipulation at Lexplorer

