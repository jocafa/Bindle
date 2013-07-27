set nocompatible

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
      \ 'build': {
      \   'mac': 'make -f make_mac.mak',
      \   'unix': 'make -f make_unix.mak'
      \ }
      \}

NeoBundle 'Valloric/YouCompleteMe', {
      \ 'build': {
      \   'mac': './install.sh'
      \ }
      \}

NeoBundle 'Shougo/unite.vim'

NeoBundle 'bling/vim-airline'
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'jdevera/vim-protobuf-syntax'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'leshill/vim-json'
NeoBundle 'mattn/zencoding-vim'
NeoBundle 'msanders/snipmate.vim'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/snipmate-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-haml'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'vim-scripts/Align'
NeoBundle 'vim-scripts/glsl.vim'
NeoBundle 'vim-scripts/openscad.vim'
NeoBundle 'wavded/vim-stylus'

"colorschemes
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tomasr/molokai'
NeoBundle 'vim-scripts/TuttiColori-Colorscheme'
NeoBundle 'vim-scripts/Warm-grey'
NeoBundle 'vim-scripts/eclm_wombat.vim'
NeoBundle 'vim-scripts/paintbox'
NeoBundle 'vim-scripts/pyte'
NeoBundle 'vim-scripts/rdark'
NeoBundle 'vim-scripts/rdark-terminal'
NeoBundle 'vim-scripts/silent.vim'
NeoBundle 'vim-scripts/vanzan_color'

filetype plugin indent on
NeoBundleCheck
