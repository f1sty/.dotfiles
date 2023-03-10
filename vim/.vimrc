set nocompatible

call plug#begin()
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    " Plug 'valloric/youcompleteme', { 'do': 'python3 install.py --all' }
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
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-obsession'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    " Plug 'xolox/vim-misc'
    " Plug 'xolox/vim-session'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
call plug#end()

set laststatus=2
set smarttab
set autoindent
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
set foldlevelstart=10
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
set shell=/bin/bash
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
" set wildoptions=pum,fuzzy
set mouse=a
set signcolumn=number
set shortmess=aoOtTI
setlocal spelllang=en_us
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

colorscheme gruvbox

let mapleader="\\"
let maplocalleader="\\"
let g:session_directory="~/.vim/sessions"
let g:session_autoload='no'
let g:session_autosave='no'
let g:session_command_aliases=1
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:mix_format_on_save=1
let g:airline_theme = 'gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
" let g:UltiSnipsExpandTrigger="<leader>\\"
let g:UltiSnipsListSnippets = "<leader>s"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:rainbow_active = 1
" let g:ycm_language_server =
"     \ [
"     \   {
"     \     'name': 'elixir',
"     \     'cmdline': [ '/usr/bin/elixir-ls' ],
"     \     'filetypes': [ 'elixir' ]
"     \   },
"     \ ]

nmap <leader>k :bn<cr>
nmap <leader>j :bp<cr>
nmap <leader>q :bp <bar> bd #<cr>
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
" inoremap <c-x><c-k> <c-x><c-k>
nmap <c-p> :Files<cr>
nmap <leader>r :Rg<cr>
nmap <leader>b :Buffers<cr>
nmap <leader>u :UnicodeSearch! 
nmap <leader>p :MarkdownPreview<cr>
nmap <leader>t :terminal<cr>
nmap // :BLines<cr>
inoremap <M-space> <c-x><c-o>
inoremap <silent><expr> <c-@> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" Use K to show documentation in preview window.
nnoremap <silent> K :call ShowDocumentation()<CR>
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap <leader>ev :edit $MYVIMRC<cr>
nnoremap <leader>so :source ~/.vim/sessions/
nnoremap <leader>ss :Obsession ~/.vim/sessions/
nnoremap <leader>sd :Obsession!<cr>
nnoremap <leader>sp :Obsession<cr>

nnoremap <buffer> <leader>m :silent make <bar> redraw!<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

autocmd BufNewFile,BufRead *.ino let g:airline_section_x='%{MyStatusLine()}'
autocmd BufRead,BufNewFile *.md setlocal spell
autocmd CursorHold * silent call CocActionAsync('highlight')

iabbrev ssig --<cr>Yurii Skrynnykov<cr><cr>email: truef1s7@gmail.com<cr>github: https://github.com/f1sty
iabbrev gm truef1s7@gmail.com
iabbrev <expr> dts strftime("%Y-%m-%d %T %z")
iabbrev yfm ---<cr>layout: post<cr>title:  ""<cr>date: <cr>categories: <cr>---
cabbrev ug r! uuidgen
hi Normal guibg=NONE ctermbg=NONE
