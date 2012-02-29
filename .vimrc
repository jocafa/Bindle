"-------------------------------------------------------------------[Vundle]----
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'danchoi/ruby_bashrockets.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'duff/vim-bufonly'
Bundle 'ervandew/supertab'
Bundle 'jayferd/eco.vim'
Bundle 'jdevera/vim-protobuf-syntax'
Bundle 'kchmck/vim-coffee-script'
Bundle 'leshill/vim-json'
Bundle 'Lokaltog/vim-powerline'
Bundle 'majutsushi/tagbar'
Bundle 'mattn/zencoding-vim'
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
Bundle 'vim-scripts/Align'
Bundle 'wavded/vim-stylus'

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

set backspace=indent,eol,start
set tabstop=2
set shiftwidth=2
set softtabstop=2
set nowrap
set nofoldenable
set autoindent

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
nmap <leader>tb :TagbarToggle<CR>
let g:SuperTabSetDefaultCompletionType="context"
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
nmap <leader>nt :NERDTreeToggle<CR>
let g:syntastic_javascript_checker="jshint"
silent! sign define SyntasticError text=!>
silent! sign define SyntasticWarning text=W>
let g:Powerline_symbols='fancy'

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

"---------------------------------------------------------------[Keymap]----
set keymap=jocafa

"---------------------------------------------------------------------------
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[File Types]%%%%
"---------------------------------------------------------------------------


"-----------------------------------------------------------------[HTML]----
autocmd BufNewFile,BufRead *.htm,*.html set filetype=html.css.javascript
autocmd FileType html.css.javascript set expandtab nocindent autoindent smartindent
autocmd FileType html.css.javascript set shiftwidth=2 tabstop=2 softtabstop=2

"------------------------------------------------------------------[CSS]----
autocmd BufNewFile,BufRead *.css,*.less set filetype=css

"-----------------------------------------------------------------[YAML]----

"-----------------------------------------------------------------[HAML]----
autocmd BufNewFile,BufRead *.haml set filetype=haml
autocmd FileType haml set expandtab
autocmd FileType haml set shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType haml set makeprg=haml\ %:p\ %:p:s?haml?html?

"-----------------------------------------------------------------[SASS]----
autocmd BufNewFile,BufRead *.sass set filetype=sass
autocmd FileType sass set noexpandtab
autocmd FileType sass set shiftwidth=2 tabstop=2 softtabstop=2

"-----------------------------------------------------------[JavaScript]----
autocmd BufNewFile,BufRead *.js set filetype=javascript
autocmd FileType javascript set shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript set nocindent autoindent smartindent expandtab

"---------------------------------------------------------[Coffeescript]----
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd FileType coffee set expandtab
autocmd FileType coffee set shiftwidth=2 tabstop=2 softtabstop=2

"-----------------------------------------------------------------[Ruby]----
"make -> ruby -c
autocmd BufNewFile,BufRead *.rb,*.rbw,*.gem,*.gemspec,[rR]akefile,*.rake,*.thor set filetype=ruby
autocmd FileType ruby set expandtab
autocmd FileType ruby set shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType ruby set dictionary=$HOME/.vim/dict/ruby.dict
autocmd FileType ruby set omnifunc=rubycomplete#Complete

"---------------------------------------------------------[ActionScript]----
autocmd BufNewFile,BufRead *.as set filetype=actionscript
autocmd FileType actionscript set omnifunc=actionscriptcomplete#Complete
autocmd FileType actionscript set complete=k$HOME/.vim/dict/actionscript.dict,.,w,b,u,t,i
autocmd FileType actionscript set makeprg=as3compile\ %:p\ -X\ 320\ -Y\ 240\ -o\ %:p:s?as?swf?

"---------------------------------------------------------------[Python]----
"autocmd BufNewFile,BufRead *.py set filetype=python
autocmd FileType python set expandtab
autocmd FileType python set shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType python let python_highlight_space_errors=1
autocmd FileType python let python_highlight_all=1
autocmd FileType python set omnifunc=pythoncomplete#Complete

"--------------------------------------------------------------------[C]----

"----------------------------------------------------------------[Obj-C]----

"-------------------------------------------------------------[Markdown]----
autocmd BufNewFile,BufRead *.md,*.mkd,*.markdown set filetype=markdown
autocmd FileType markdown set wrap linebreak expandtab shiftwidth=2 tabstop=2 softtabstop=2

"---------------------------------------------------------[ Processing ]----
autocmd BufNewFile,BufRead *.pde set filetype=java expandtab shiftwidth=2 tabstop=2 softtabstop=2

"-----------------------------------------------------------[ Protobuf ]----
autocmd BufNewFile,BufRead *.proto set filetype=proto
