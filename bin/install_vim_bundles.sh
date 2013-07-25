mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim -u ~/.vim/bundles.vim +NeoBundleInstall +qall
