"Vundle setup
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"Core
Plugin 'Valloric/YouCompleteMe'
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'godlygeek/tabular'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'
Plugin 'google/vim-maktaba'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wincent/command-t'

"Pandoc
"Plugin 'vim-pandoc/vim-pandoc'
"Plugin 'vim-pandoc/vim-pandoc-syntax'

"Haskell
"Plugin 'Shougo/vimproc.vim'
"Plugin 'Twinside/vim-haskellConceal'
"Plugin 'eagletmt/ghcmod-vim'
"Plugin 'eagletmt/neco-ghc'

"Disabled
"Plugin 'Shougo/neocomplete.vim'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'enomsg/vim-haskellConcealPlus'
"Plugin 'felikz/ctrlp-py-matcher'
"Plugin 'kana/vim-operator-user'
"Plugin 'kien/ctrlp.vim'
"Plugin 'rhysd/vim-clang-format'
"Plugin 'rosenfeld/conque-term'
"Plugin 'scrooloose/syntastic'
"Plugin 'xolox/vim-misc'
"Plugin 'xolox/vim-session'

call vundle#end()
call glaive#Install()
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


"Syntax highlighting
colorscheme solarized
set background=dark
syntax on


"Keymappings
map <F4> :!ctags .<CR>
nmap ,d :NERDTreeToggle<CR>
nmap ,t :TagbarToggle<CR>
nmap <Leader>t :CommandT .<CR>
nmap bt :ConqueTerm bash<CR><CR>
nmap tn :tabnew<CR>
nnoremap <CR> :nohlsearch<CR><CR>
set pastetoggle=<F2>
set whichwrap+=<,>,h,l,[,]


"Airline install
set laststatus=2
let g:airline_powerline_fonts = 1


"cmd-t
set wildignore=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg,*.gch,*.o


"YouCompleteMe
autocmd CompleteDone * pclose
let g:ycm_global_ycm_extra_conf = '~/dev/config/.ycm_extra_conf.py'
nnoremap <leader>d :YcmCompleter GoTo<CR>


"Haskell
let $PATH = $PATH . ':' . expand('~/.cabal/bin')


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
