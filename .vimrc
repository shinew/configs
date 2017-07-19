call plug#begin('~/.vim/plugged')

"Core
Plug 'MattesGroeger/vim-bookmarks'
Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'majutsushi/tagbar'
Plug 'powerline/powerline'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/restore_view.vim'

"Language
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer --racer-completer --tern-completer' }
Plug 'rust-lang/rust.vim'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'

call plug#end()
filetype plugin indent on

"General
set autoindent
set backspace=indent,eol,start
"set colorcolumn=80
set cursorline
set expandtab smarttab shiftround nojoinspaces
set hlsearch
set ignorecase
set incsearch
"set number
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
let mapleader=","
nnoremap <CR> :nohlsearch<CR><CR>
imap fd <Esc>
"map <F4> :!ctags .<CR>
"nmap <Leader>f :NERDTreeToggle<CR>
"nmap <Leader>t :TagbarToggle<CR>
nmap tn :tabnew<CR>
set pastetoggle=<F2>
set whichwrap+=<,>,h,l,[,]

"Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
set laststatus=2

"YouCompleteMe
autocmd CompleteDone * pclose
let g:ycm_global_ycm_extra_conf = '/Users/shine/dev/configs/.ycm_extra_conf.py'
let g:ycm_rust_src_path = '/Users/shine/.multirust/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src'
nnoremap <leader>t :YcmCompleter GoTo<CR>

"Rust
"let g:rustfmt_autosave = 1

"OCaml
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
execute "set rtp+=" . g:opamshare . "/ocp-indent/vim"

"fzf
nmap <Leader>f :FZF <CR>
