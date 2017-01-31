call plug#begin('~/.vim/plugged')

"Core
Plug 'MattesGroeger/vim-bookmarks'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --racer-completer' }
Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'majutsushi/tagbar'
Plug 'powerline/powerline'
Plug 'rking/ag.vim'
Plug 'rust-lang/rust.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/restore_view.vim'

"Pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

"Google
"Plug 'google/vim-codefmt'  " Depends on glaive and maktaba
"Plug 'google/vim-glaive'
"Plug 'google/vim-maktaba'

"Haskell
"Plug 'Shougo/vimproc.vim'
"Plug 'Twinside/vim-haskellConceal'
"Plug 'eagletmt/ghcmod-vim'
"Plug 'eagletmt/neco-ghc'

"Disabled
"Plug 'Shougo/neocomplete.vim'
"Plug 'Yggdroot/indentLine'
"Plug 'davidhalter/jedi-vim'
"Plug 'enomsg/vim-haskellConcealPlus'
"Plug 'felikz/ctrlp-py-matcher'
"Plug 'godlygeek/tabular'
"Plug 'jceb/vim-orgmode'
"Plug 'kana/vim-operator-user'
"Plug 'kien/ctrlp.vim'
"Plug 'rhysd/vim-clang-format'
"Plug 'rosenfeld/conque-term'
"Plug 'scrooloose/syntastic'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'wincent/command-t'
"Plug 'xolox/vim-misc'
"Plug 'xolox/vim-session'

" Add plugins to &runtimepath
call plug#end()
"call glaive#Install()
filetype plugin indent on


"General
set autoindent
set backspace=indent,eol,start
set colorcolumn=80
set cursorline
set expandtab smarttab shiftround nojoinspaces
set hlsearch
set ignorecase
set incsearch
set number
set showmatch
set smartcase
set tabstop=2 shiftwidth=2 softtabstop=2
set foldmethod=syntax


"File-specific
autocmd FileType python setlocal tabstop=2 shiftwidth=2 softtabstop=2 expandtab smarttab shiftround nojoinspaces


"Syntax highlighting
colorscheme solarized
set background=dark
syntax on


"Keymappings
map <F4> :!ctags .<CR>
nmap ,d :NERDTreeToggle<CR>
nmap ,t :TagbarToggle<CR>
nmap tn :tabnew<CR>
nnoremap <CR> :nohlsearch<CR><CR>
set pastetoggle=<F2>
set whichwrap+=<,>,h,l,[,]

"nmap <Leader>t :CommandT .<CR>
"nmap bt :ConqueTerm bash<CR><CR>


"Powerline install
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2


"Command-t
"set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg,*.gch,*.o
"set wildignore+=build


"YouCompleteMe
autocmd CompleteDone * pclose
let g:ycm_global_ycm_extra_conf = '/Users/shine/dev/configs/.ycm_extra_conf.py'
let g:ycm_rust_src_path = '/Users/shine/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src'
nnoremap <leader>d :YcmCompleter GoTo<CR>


"Rust
let g:rustfmt_autosave = 1


"Haskell
"let $PATH = $PATH . ':' . expand('~/.cabal/bin')


"OCaml
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
set rtp^="/Users/shine/.opam/4.03.0/share/ocp-indent/vim"

"fzf
nmap <Leader>f :FZF <CR>

"Indent guide
"let g:indentLine_char = '┆'
