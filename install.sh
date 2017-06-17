# chsh -s `which zsh`
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install fonts
env git clone https://github.com/powerline/fonts.git
cd fonts
./install.sh
cd ..
rm -rf fonts
# install other fonts patch
cp fonts/* $HOME/Library/Fonts/

# copy powerline theme
mkdir -p ~/.oh-my-zsh/custom/themes
cp themes/powerline.zsh-theme ~/.oh-my-zsh/custom/themes

# change default theme to powerline
sed -ie 's/^ZSH_THEME.*$/ZSH_THEME="powerline"/g' ~/.zshrc
source ~/.zshrc

# hint
echo "install already done, please change your terminal's font to your favorite one whose name contains Powerline"

