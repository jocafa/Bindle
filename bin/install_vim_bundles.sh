mkdir -p ~/.vimbundles
cd ~/.vimbundles

get_bundle() {
  (
  if [ -d "$2" ]; then
    echo "Updating $1's $2"
    cd "$2"
    git pull --rebase
  else
    git clone "git://github.com/$1/$2.git"
  fi
  )
}

get_bundle danchoi ruby_bashrockets.vim
get_bundle digitaltoad vim-jade
get_bundle duff vim-bufonly
get_bundle ervandew supertab
get_bundle jayferd eco.vim
get_bundle jdevera vim-protobuf-syntax
get_bundle kchmck vim-coffee-script
get_bundle leshill vim-json
get_bundle majutsushi tagbar
get_bundle mattn zencoding-vim
#get_bundle mileszs ack.vim
get_bundle msanders snipmate.vim
get_bundle pangloss vim-javascript
get_bundle scrooloose nerdcommenter
get_bundle scrooloose nerdtree
get_bundle scrooloose snipmate-snippets
get_bundle scrooloose syntastic
get_bundle tpope vim-fugitive
get_bundle tpope vim-git
get_bundle tpope vim-haml
get_bundle tpope vim-markdown
get_bundle tpope vim-rails
get_bundle tpope vim-repeat
get_bundle tpope vim-surround
#get_bundle vim-scripts Command-T
#get_bundle vim-scripts Indent-Finder
get_bundle vim-scripts Align
#get_bundle vim-scripts IndentAnything
get_bundle wavded vim-stylus

#colorschemes
get_bundle altercation vim-colors-solarized
get_bundle tomasr molokai
get_bundle vim-scripts TuttiColori-Colorscheme
get_bundle vim-scripts Warm-grey
get_bundle vim-scripts eclm_wombat.vim
get_bundle vim-scripts paintbox
get_bundle vim-scripts pyte
get_bundle vim-scripts rdark
get_bundle vim-scripts rdark-terminal
get_bundle vim-scripts silent.vim
get_bundle vim-scripts vanzan_color

vim -c 'call pathogen#helptags()|q'
