set autoindent                                              " auto carry the indentation
set autoread                                                " auto update file if changed
set background=dark                                         " dark themed ftw
set clipboard=unnamedplus                                   " copy to system clipboar
set cursorline                                              " show selected lin
set encoding=utf-8                                          " force utf-8
set expandtab                                               " insert appropriate number of spaces
set fileformat=unix                                         " use unix line endings
set foldenable                                              " enable folding
set foldlevelstart=99                                       " unfold all on start
set foldmethod=indent                                       " fold based on indentation
set foldnestmax=10                                          " maximum nested folding limit
set hlsearch                                                " highlight searching
set ignorecase                                              " don't care about case while searching
set incsearch                                               " incremental while searching
set lazyredraw                                              " need performance for macros
set list                                                    " show whitespace characters
set listchars=tab:»\ ,trail:·,extends:›,precedes:‹,nbsp:·   " fancy characters for whitespaces
set magic                                                   " better regex
set mouse=c                                                 " disable mouse
set nobackup                                                " don't generate backup files
set nocompatible                                            " not compatible with vi
set nohidden                                                " close the buffer when another file is opened
set noswapfile                                              " don't generate swap files
set nowritebackup                                           " don't write backup files
set number                                                  " show line number on current line
set path+=**                                                " go into subfolders when searching files
set relativenumber                                          " show other line numbers as relatives
set ruler                                                   " show current line and column position
set secure                                                  " don't load random .vimrc from local dir
set shiftwidth=4                                            " spaces for indentation
set showcmd                                                 " show command
set smartcase                                               " care about case if uppercase while searching
set smartindent                                             " don't be dumb
set softtabstop=4                                           " tabs to spaces
set tabstop=4                                               " set tab size
set wildmenu                                                " show all auto complete settings
set wrapscan                                                " wrap to start if eof while searching
syntax on                                                   " force language syntax highlight
"let &colorcolumn="120"                                     " set margin

autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
filetype plugin on
filetype indent on

highlight ColorColumn ctermbg=darkgrey
highlight CursorLine cterm=NONE ctermbg=236
highlight LineNr ctermfg=grey

let mapleader = " "
nnoremap <F1> :NERDTreeToggle<CR>
nnoremap <Leader>c :let @/=""<CR>   " clear search pattern
nnoremap <Leader>h :noh<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>
nnoremap n nzzzv                    " center search
nnoremap N Nzzzv                    " center search
nnoremap Y y$
set pastetoggle=<F2>                " paste mode

call plug#begin('~/.vim/plugged')   " https://github.com/junegunn/vim-plug
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeQuitOnOpen = 1
let g:netrw_altv = 1
let g:netrw_banner = 0
let g:netrw_dirhistmax = 0
let g:netrw_liststyle = 3
silent! colorscheme molokai_dark
