mkdir -p ~/.vim/bundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim -u ~/.vim/bundles.vim +BundleInstall +qall
