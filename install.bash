# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -so ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

# install nvm
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# make various directories for vim
mkdir ~/.vim/swaps
mkdir ~/.vim/backups
mkdir ~/.vim/undo
mkdir ~/.vim/colors
curl -so ~/.vim/colors/molokai.vim https://raw.github.com/tomasr/molokai/master/colors/molokai.vim

# symlink dotfiles
for dotfile in tmux.conf vimrc bash_profile gitconfig git-completion.bash git-prompt.sh zshrc
do
  echo $dotfile
  ln -s `pwd`/$dotfile ~/.$dotfile
done

# install homebrew
ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"

# install packages
brew install zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
sudo echo "/usr/local/bin/zsh" >> /etc/shells
chsh -s /usr/local/bin/zsh

# install zsh syntax highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

