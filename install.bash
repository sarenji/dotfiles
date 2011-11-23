for dotfile in tmux.conf
do
  echo $dotfile
  ln -s `pwd`/$dotfile ~/.$dotfile
done
