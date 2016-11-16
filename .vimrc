call plug#begin('~/.vim/plugged')

"Core
Plug 'MattesGroeger/vim-bookmarks'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'altercation/vim-colors-solarized'
Plug 'christoomey/vim-tmux-navigator'
Plug 'google/vim-codefmt'  " Depends on glaive and maktaba
Plug 'google/vim-glaive'
Plug 'google/vim-maktaba'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'majutsushi/tagbar'
Plug 'powerline/powerline'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/restore_view.vim'

"Pandoc
"Plug 'vim-pandoc/vim-pandoc'
"Plug 'vim-pandoc/vim-pandoc-syntax'

"Haskell
"Plug 'Shougo/vimproc.vim'
"Plug 'Twinside/vim-haskellConceal'
"Plug 'eagletmt/ghcmod-vim'
"Plug 'eagletmt/neco-ghc'

"Disabled
"Plug 'Shougo/neocomplete.vim'
"Plug 'davidhalter/jedi-vim'
"Plug 'enomsg/vim-haskellConcealPlus'
"Plug 'felikz/ctrlp-py-matcher'
"Plug 'godlygeek/tabular'
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


"cmd-t
"set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg,*.gch,*.o
"set wildignore+=build


"YouCompleteMe
autocmd CompleteDone * pclose
let g:ycm_global_ycm_extra_conf = '~/dev/configs/.ycm_extra_conf.py'
nnoremap <leader>d :YcmCompleter GoTo<CR>


"Haskell
"let $PATH = $PATH . ':' . expand('~/.cabal/bin')


"OCaml
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"
set rtp^="/Users/shine/.opam/4.03.0/share/ocp-indent/vim"

"fzf
nmap <Leader>f :FZF <CR>

""NeoComplete
"" Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
"" Use neocomplete.
"let g:neocomplete#enable_at_startup = 1
"" Use smartcase.
"let g:neocomplete#enable_smart_case = 1
"" Set minimum syntax keyword length.
"let g:neocomplete#sources#syntax#min_keyword_length = 3
"let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

"" Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=jedi#completions
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"let g:jedi#completions_enabled = 0
"let g:jedi#auto_vim_configuration = 0
"" Plugin key-mappings.
"inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()
"" Recommended key-mappings.
"" <CR>: close popup and save indent.
"inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
"function! s:my_cr_function()
  "return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  "" For no inserting <CR> key.
  ""return pumvisible() ? "\<C-y>" : "\<CR>"
"endfunction
"" <TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
"inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" : "\<S-TAB>"
"" <C-h>, <BS>: close popup and delete backword char.
"inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"" Close popup by <Space>.
""inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"
"if !exists('g:neocomplete#force_omni_input_patterns')
    "let g:neocomplete#force_omni_input_patterns = {}
"endif
"let g:neocomplete#force_omni_input_patterns.python =
    "\ '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'


"Sessioning
"let g:session_autosave = 'no'
"let g:session_autoload = 'no'


"CtrlP speedup
"let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      "\ --ignore .git
      "\ --ignore .svn
      "\ --ignore .hg
      "\ --ignore .DS_Store
      "\ --ignore "**/*.pyc"
      "\ -g ""'


"Syntastic: C++11
"let g:syntastic_cpp_compiler = 'c++'
"let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'
"let g:syntastic_python_python_exec = 'python3'
"let g:syntastic_quiet_messages = {
    "\ "!level":  "errors",
    "\ "type":    "style",
    "\ "regex":   '.*',
    "\ "file:p":  '.*' }
