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
for dotfile in tmux.conf vimrc bash_profile gitconfig git-completion.bash git-prompt.sh
do
  echo $dotfile
  ln -s `pwd`/$dotfile ~/.$dotfile
done
