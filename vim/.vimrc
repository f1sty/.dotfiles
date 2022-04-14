set nocompatible

call plug#begin()
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'frazrepo/vim-rainbow'
    Plug 'mrk21/yaml-vim'
    Plug 'elixir-editors/vim-elixir'
    Plug 'mhinz/vim-mix-format'
    Plug 'slashmili/alchemist.vim'
    Plug 'rust-lang/rust.vim'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'godlygeek/tabular'
    Plug 'chrisbra/unicode.vim'
    Plug 'morhetz/gruvbox'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-surround'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()

set undofile
set undodir=~/.vim/undo
set undolevels=10000
set list                                " show special characters
set listchars=tab:»»,trail:·,nbsp:~,eol:↵,extends:❯,precedes:❮
set autoread                            " re-read file in buffer if changed in other place
set background=dark
set textwidth=98
set colorcolumn=+1
set complete+=kspell
set cursorline                          " track position
set encoding=utf-8                      " UTF-8 encoding for all new files
set fileformat=unix
set foldenable
set foldlevelstart=3
set foldmethod=syntax
set foldnestmax=5
set formatoptions+=j
set formatoptions+=n
set hidden                              " allow switch between buffers w/o saving changes
set hlsearch                            " highlight all search results
set ignorecase                          " case-insensitive search
set incsearch                           " increment search
set lazyredraw
set linebreak
set nobackup
set nowritebackup
set nottimeout
set nowrap
set number
set ruler
set scrolloff=9
set shell=/bin/zsh
set shiftwidth=4 tabstop=4 expandtab
set softtabstop=4
set showcmd
set showmatch
set splitbelow
set statusline+=%#warningmsg#
set statusline+=%*
set t_Co=256
set timeout
set timeoutlen=300
set title
set ttyfast
set updatetime=300
set wildmenu
set wildmode=list:full
set wildoptions=pum,fuzzy
set mouse=a
set signcolumn=number
set shortmess=aoOtTI
setlocal spelllang=en_us

colorscheme gruvbox

let mapleader=" "
let maplocalleader=" "
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:mix_format_on_save=1
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
let g:UltiSnipsListSnippets = "<leader>s"
let g:rainbow_active = 1

nmap <leader>j :bn<cr>
nmap <leader>k :bp<cr>
nmap <leader>q :bp <bar> bd #<cr>
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
inoremap <c-x><c-k> <c-x><c-k>
nmap <leader>r :Rg 
nmap <leader>f :Files<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>u :UnicodeSearch! 
nmap <leader>p :MarkdownPreview<cr>
nmap <leader>t :terminal<cr>
nmap // :BLines<cr>
inoremap <M-space> <c-x><c-o>
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <buffer> <leader>m :silent make <bar> redraw!<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

autocmd BufNewFile,BufRead *.ino let g:airline_section_x='%{MyStatusLine()}'
autocmd BufRead,BufNewFile *.md setlocal spell

iabbrev ssig --<cr>Yurii Skrynnykov<cr><cr>email: truef1s7@gmail.com<cr>github: https://github.com/f1sty
cabbrev ug r! uuidgen

hi Normal guibg=NONE ctermbg=NONE
