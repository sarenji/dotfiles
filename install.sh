# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -so ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

# make various directories for vim
mkdir -p ~/.vim/swaps
mkdir -p ~/.vim/backups
mkdir -p ~/.vim/undo
mkdir -p ~/.vim/colors
curl -so https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim ~/.vim/colors/molokai.vim

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install zsh
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install zsh syntax highlighting
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone -q git://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

# symlink dotfiles
for dotfile in tmux.conf vimrc bash_profile gitconfig git-completion.bash git-prompt.sh zshrc
do
  echo $dotfile
  ln -sf `pwd`/$dotfile ~/.$dotfile
done

