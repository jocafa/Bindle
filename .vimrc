"-------------------------------------------------------------------[Vundle]----
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Lokaltog/vim-powerline'
Bundle 'Rykka/ColorV'
Bundle 'bkad/CamelCaseMotion'
Bundle 'danchoi/ruby_bashrockets.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'duff/vim-bufonly'
Bundle 'ervandew/supertab'
Bundle 'jayferd/eco.vim'
Bundle 'jdevera/vim-protobuf-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/zencoding-vim'
Bundle 'mileszs/ack.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/snipmate-snippets'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-haml'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-scripts/Align'
Bundle 'wavded/vim-stylus'
Bundle 'wincent/Command-T'

"colorschemes
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
Bundle 'vim-scripts/TuttiColori-Colorscheme'
Bundle 'vim-scripts/Warm-grey'
Bundle 'vim-scripts/eclm_wombat.vim'
Bundle 'vim-scripts/paintbox'
Bundle 'vim-scripts/pyte'
Bundle 'vim-scripts/rdark'
Bundle 'vim-scripts/rdark-terminal'
Bundle 'vim-scripts/silent.vim'
Bundle 'vim-scripts/vanzan_color'

filetype plugin indent on

"------------------------------------------------------------------[General]----
set secure "locks down the exrc setting
set exrc "enable cwd .vimrc files

set nocompatible
set encoding=utf8

syntax on

set nowrap
set nofoldenable

set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set autoindent
"set cinoptions=(s,m1,)200,j1,J1

set vb
set t_vb=""

set backup
set swapfile
set backupdir=/tmp
set directory=/tmp

set lazyredraw

set complete=.,w,k,b,u,t,i
set completeopt=menu

let mapleader=","

"-------------------------------------------------------------------[Layout]----
set nonumber
set laststatus=2
"set ruler
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set listchars=tab:▶━,trail:⌴,extends:▶,precedes:◀

set splitbelow
set splitright

"set list
"set pumheight=5

colorscheme molokai
"set bg=light

syn on

silent! set colorcolumn=80

function! SyntaxItem()
	return synIDattr(synID(line("."),col("."),1),"name")
endfunction

"set statusline+=%{SyntaxItem()}

"--------------------------------------------------------------[Plugins]----
nmap <leader>b :TagbarToggle<CR>
let g:SuperTabSetDefaultCompletionType="context"
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
nmap <leader>nt :NERDTreeToggle<CR>
let g:syntastic_javascript_checker="jshint"
silent! sign define SyntasticError text=!>
silent! sign define SyntasticWarning text=W>
let g:Powerline_symbols='fancy'
let g:CommandTMaxHeight=20

"---------------------------------------------------------------[Search]----
set hlsearch
set incsearch
set smartcase
set ignorecase

"-----------------------------------------------------------[Navigation]----
set mouse=a
set hidden
set scrolloff=5
set scrolljump=5
set sidescrolloff=10
set sidescroll=1
set wildmenu
set showmatch
set matchtime=2

nnoremap <silent> <Tab> :wincmd w<CR>
nnoremap <silent> <S-Tab> :wincmd W<CR>

map j gj
map k gk

map H ^
map L $

map gf :e <cfile><CR>
nnoremap <leader>/ :nohls<CR>

"---------------------------------------------------------------[Keymap]----
set keymap=jocafa

"---------------------------------------------------------------------------
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[File Types]%%%%
"---------------------------------------------------------------------------

"-----------------------------------------------------------------[HTML]----
autocmd BufNewFile,BufRead *.htm,*.html set filetype=html.css.javascript

"-----------------------------------------------------------[JavaScript]----
"autocmd FileType javascript set nocindent


"------------------------------------------------------------------[CSS]----
autocmd BufNewFile,BufRead *.css,*.less set filetype=css


"-----------------------------------------------------------------[HAML]----
autocmd BufNewFile,BufRead *.haml set filetype=haml
autocmd FileType haml set makeprg=haml\ %:p\ %:p:s?haml?html?

"-----------------------------------------------------------------[Ruby]----
"make -> ruby -c
autocmd BufNewFile,BufRead *.rb,*.rbw,*.gem,*.gemspec,[rR]akefile,*.rake,*.thor set filetype=ruby


"---------------------------------------------------------------[Python]----
autocmd FileType python let python_highlight_space_errors=1
autocmd FileType python let python_highlight_all=1
autocmd FileType python set omnifunc=pythoncomplete#Complete

"-------------------------------------------------------------[Markdown]----
autocmd BufNewFile,BufRead *.md,*.mkd,*.markdown set filetype=markdown
autocmd FileType markdown set wrap linebreak

"---------------------------------------------------------[ Processing ]----
autocmd BufNewFile,BufRead *.pde set filetype=java

"-----------------------------------------------------------[ Protobuf ]----
autocmd BufNewFile,BufRead *.proto set filetype=proto
