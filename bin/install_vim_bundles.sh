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

get_bundle leshill vim-json
get_bundle duff vim-bufonly
get_bundle kchmck vim-coffee-script
get_bundle mileszs ack.vim
get_bundle pangloss vim-javascript
get_bundle mattn zencoding-vim
get_bundle ervandew supertab
get_bundle msanders snipmate.vim
get_bundle scrooloose snipmate-snippets
get_bundle scrooloose nerdcommenter
get_bundle scrooloose nerdtree
get_bundle tpope vim-git
get_bundle tpope vim-haml
get_bundle tpope vim-markdown
get_bundle wavded vim-stylus
get_bundle vim-scripts actionscript.vim--Jethani

#colorschemes
get_bundle vim-scripts eclm_wombat.vim
get_bundle vim-scripts paintbox
get_bundle vim-scripts rdark
get_bundle vim-scripts rdark-terminal
get_bundle vim-scripts pyte
get_bundle vim-scripts silent.vim
get_bundle vim-scripts TuttiColori-Colorscheme
get_bundle vim-scripts Warm-grey
get_bundle tomasr molokai

vim -c 'call pathogen#helptags()|q'
