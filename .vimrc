"------------------------------------------------------------------[Vundle]----
source ~/.vim/bundles.vim

"------------------------------------------------------------------[General]----
set secure "locks down the exrc setting
set exrc "enable cwd .vimrc files

set nocompatible
set encoding=utf8

set clipboard+=unnamed

set nowrap
set nofoldenable

set backspace=indent,eol,start
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
"set cinoptions=(s,m1,)200,j1,J1

"Use visual bell, but an empty string for it - display nothing
set vb
set t_vb=""

set backup "make a backup before deleting a file
set swapfile
set backupdir=/tmp
set directory=/tmp "keep swap files out of cwd

set lazyredraw "don't redraw while executing things

set complete=.,w,k,b,u,t,i
set completeopt=menu "show popup for completions

let mapleader=","

"-------------------------------------------------------------------[Layout]----
set nonumber "turn off line numbering
set laststatus=2 "always show a status line on the last window
"set ruler
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
set listchars=tab:▶━,trail:⌴,extends:▶,precedes:◀

set splitbelow
set splitright

"set list
"set pumheight=5

colorscheme molokai

syntax on

silent! set colorcolumn=80 "highlight 80th column

function! SyntaxItem()
	return synIDattr(synID(line("."),col("."),1),"name")
endfunction

"set statusline+=%{SyntaxItem()}

"--------------------------------------------------------------[Plugins]----
nmap <leader>b :TagbarToggle<CR>
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
nmap <leader>nt :NERDTreeToggle<CR>
let g:syntastic_javascript_checker="jshint"
silent! sign define SyntasticError text=!>
silent! sign define SyntasticWarning text=W>

" vim-javascript
let g:html_indent_inctags="html,body,head,tbody"
let g:html_indent_script1="inc"
let g:html_indent_style1="inc"

" airline
let g:airline_theme='solarized'
let g:airline_left_sep = '⮀'
let g:airline_left_alt_sep = '⮁'
let g:airline_right_sep = '⮂'
let g:airline_right_alt_sep = '⮃'
let g:airline_fugitive_prefix = '⭠'
let g:airline_readonly_symbol = '⭤'
let g:airline_linecolumn_prefix = '⭡'

" unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>f :<C-u>Unite -start-insert file_rec/async<CR>
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  imap <buffer> <C-j> <Plug>(unite_select_next_line)
  imap <buffer> <C-j> <Plug>(unite_select_previous_line)
endfunction

" YCM
let g:ycm_filetype_blacklist={'unite': 1}

"---------------------------------------------------------------[Search]----
set hlsearch "highlight previous search matches
set incsearch "highlight search matches while typing
set smartcase "case sensitive search when uppercase present
set ignorecase "case insensitive search by default

"-----------------------------------------------------------[Navigation]----
set mouse=a "enable mouse for all modes
set hidden "allow unwritten buffers to be hidden
set scrolloff=5
set scrolljump=5
set sidescrolloff=10
set sidescroll=1
set wildmenu
set showmatch "highlight matching bracket when inserting a new one
set matchtime=2 "how long to show matching bracket in .1s

" easier window navigation
nnoremap <silent> <Tab> :wincmd w<CR>
nnoremap <silent> <S-Tab> :wincmd W<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"screenwise character movement
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


"----------------------------------------------------------------[C/C++]----
autocmd BufNewFile,BufRead *.ino set filetype=cpp
autocmd FileType cpp set tabstop=2 softtabstop=2 shiftwidth=2 noexpandtab formatoptions-=ro

"-----------------------------------------------------------------[GLSL]----
autocmd BufNewFile,BufRead *.glsl,*.vert,*.frag set filetype=glsl

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
"autocmd BufNewFile,BufRead *.pde set filetype=java

"-----------------------------------------------------------[ Protobuf ]----
autocmd BufNewFile,BufRead *.proto set filetype=proto
