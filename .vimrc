"---------------------------------------------------------------------[Init]----
runtime! autoload/pathogen.vim
if exists('g:loaded_pathogen')
	call pathogen#runtime_prepend_subdirectories(expand('~/.vimbundles'))
endif

"------------------------------------------------------------------[General]----
set nocompatible
set encoding=utf8

syntax on
filetype plugin indent on

set backspace=2
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

"-------------------------------------------------------------------[Layout]----
set nonumber
set laststatus=2
set ruler
set listchars=tab:▶━,trail:⌴,extends:▶,precedes:◀

"set list
"set pumheight=5

colorscheme molokai

syn on

silent! set colorcolumn=80

function! SyntaxItem()
	return synIDattr(synID(line("."),col("."),1),"name")
endfunction

"set statusline+=%{SyntaxItem()}

"--------------------------------------------------------------[Plugins]----
let g:SuperTabSetDefaultCompletionType="context"

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

nnoremap <silent> <Tab> :wincmd w<CR>
nnoremap <silent> <S-Tab> :wincmd W<CR>

map j gj
map k gk

map H ^
map L $

"---------------------------------------------------------------------------
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[File Types]%%%%
"---------------------------------------------------------------------------


"-----------------------------------------------------------------[HTML]----
autocmd BufNewFile,BufRead *.htm,*.html set filetype=html.css.javascript

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
autocmd FileType javascript set shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType javascript set nocindent autoindent smartindent noexpandtab

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
"autocmd FileType actionscript set omnifunc=actionscriptcomplete#Complete
"autocmd FileType actionscript set complete=k$HOME/.vim/dict/actionscript.dict,.,w,b,u,t,i
autocmd FileType actionscript set makeprg=as3compile\ %:p\ -X\ 320\ -Y\ 240\ -o\ %:p:s?as?swf?

"---------------------------------------------------------------[Python]----
autocmd BufNewFile,BufRead *.py set filetype=python
autocmd FileType python set expandtab
autocmd FileType python set shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType python let python_highlight_space_errors=1
autocmd FileType python let python_highlight_all=1
autocmd FileType python set omnifunc=pythoncomplete#Complete

"--------------------------------------------------------------------[C]----

"----------------------------------------------------------------[Obj-C]----

"-------------------------------------------------------------[Markdown]----
autocmd BufNewFile,BufRead *.md,*.mkd,*.markdown set filetype=markdown
autocmd FileType markdown set wrap linebreak

"---------------------------------------------------------[ Processing ]----
autocmd BufNewFile,BufRead *.pde set filetype=java expandtab shiftwidth=2 tabstop=2 softtabstop=2
