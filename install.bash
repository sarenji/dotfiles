# install pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle; \
curl -so ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

# make swaps directory for vim
mkdir ~/.vim/swaps

# symlink dotfiles
for dotfile in tmux.conf vimrc bash_profile gitconfig
do
  echo $dotfile
  ln -s `pwd`/$dotfile ~/.$dotfile
done
