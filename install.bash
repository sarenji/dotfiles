for dotfile in tmux.conf vimrc bash_profile gitconfig
do
  echo $dotfile
  ln -s `pwd`/$dotfile ~/.$dotfile
done
