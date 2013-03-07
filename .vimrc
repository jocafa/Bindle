"------------------------------------------------------------------[Vundle]----
source ~/.vim/bundles.vim

"------------------------------------------------------------------[General]----
set secure "locks down the exrc setting
set exrc "enable cwd .vimrc files

set nocompatible
set encoding=utf8

set clipboard+=unnamed

syntax on

set nowrap
set nofoldenable

set backspace=indent,eol,start
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
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
" vim-javascript
let g:html_indent_inctags="html,body,head,tbody"
let g:html_indent_script1="inc"
let g:html_indent_style1="inc"

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

" easier window navigation
nnoremap <silent> <Tab> :wincmd w<CR>
nnoremap <silent> <S-Tab> :wincmd W<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

map j gj
map k gk

map H ^
map L $

map gf :e <cfile><CR>
nnoremap <leader>/ :nohls<CR>

"---------------------------------------------------------------[Keymap]----
set keymap=jocafa

"------------------------------------------------------------[Utilities]----
func! FinishHeader(chr)
  execute "normal! A "
  execute "normal! " . (80 - col("$")) . "A" . a:chr
endfunc

nnoremap <leader>- :call FinishHeader("-")<CR>
nnoremap <leader>= :call FinishHeader("=")<CR>

"---------------------------------------------------------------------------
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%[File Types]%%%%
"---------------------------------------------------------------------------

"-----------------------------------------------------------------[HTML]----
"autocmd BufNewFile,BufRead *.htm,*.html set filetype=html.css.javascript

"-----------------------------------------------------------[JavaScript]----
"autocmd FileType javascript set nocindent
autocmd FileType javascript set tabstop=2 softtabstop=2 shiftwidth=2 expandtab formatoptions-=ro

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
