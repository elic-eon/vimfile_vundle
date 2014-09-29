" vundle --------------------------------------------------------------------{{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'flazz/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'vim-scripts/Align'
Plugin 'Raimondi/delimitMate'
Plugin 'vim-scripts/nginx.vim'
Plugin 'ervandew/supertab'
Plugin 'ap/vim-css-color'
Plugin 'tpope/vim-fugitive'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'pangloss/vim-javascript'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-endwise'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" }}}
" setting -------------------------------------------------------------------{{{ 
set encoding=utf-8
set nocompatible                      " not compatible with the old-fashion vi mode
set history=1000                      " keep 1000 lines of command line history
set undolevels=100                    " 100 step undo
set autoread                          " auto read when file is changed from outside
set autoindent                        " auto indent"
set viminfo=                          " disable .viminfo file
set number                            " show linenumber
filetype on                           " enable filetype detection
filetype indent on                    " enable filetype-specific indenting
filetype plugin on                    " enable filetype-specific plugins
syntax on                             " syntax highlight
set hlsearch                          " search highlighting
set incsearch                         " incremental search
set colorcolumn=+1
set textwidth=80

" Don't try to highlight lines longer than 800 characters.
set synmaxcol=800
"" bo backup file
set nobackup                          " no *~ backup files
set noswapfile
set nowritebackup

" Resize splits when the window is resized
au VimResized * :wincmd =

"" theme conf
set t_Co=256                          " using 256-color

try
  let g:solarized_termcolors=256
  "colorscheme solarized_dark
  colorscheme Tomorrow-Night
  "let g:solarized_drgrade=0
catch
endtry

"" airline conf
let g:airline_powerline_fonts=1
set laststatus=2
set showtabline=2
set cursorline


" special char
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:-
nmap <leader>l :set list!<CR>
"set showbreak=↪

" 
set fillchars=diff:⣿,vert:│
set fillchars=diff:⣿,vert:\|

" split
set splitbelow
set splitright

" folding
set foldlevel=100
set foldmethod=marker
nnoremap <Space> za
vnoremap <Space> za

" sudo to write
cnoremap w!! w !sudo tee % >/dev/null

" Move cursor by display lines when wrapping
noremap j gj
noremap k gk
noremap gj j
noremap gk k

set cmdheight=2
" }}}
" key mapping --------------------------------------------------------------{{{

" enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>

" nerdcommenter shortcut
map <Leader><Leader> <Leader>c<space>

" source .vimrc
nnoremap <leader>so :so ~/.vimrc<cr>

" NERDTreeToggle
nnoremap <F2> :NERDTreeToggle<cr>

" Insert Mode Completion {{{

inoremap <c-f> <c-x><c-f>
inoremap <c-]> <c-x><c-]>
inoremap <c-l> <c-x><c-l>

" switch to UTF-8 encoding
nnoremap <leader>u :e ++enc=utf-8<CR>

" identation
nmap <TAB> v>
nmap <S-TAB> v<
vmap <TAB> >gv
vmap <S-TAB> <gv


" Tagbar hotkey
nmap <F3> :TagbarToggle<CR>

" }}}

" }}}
" Quick editing ----------------------------------------------------------- {{{

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>et :vsplit ~/.tmux.conf<cr>
nnoremap <leader>eg :vsplit ~/.gitconfig<cr>

" }}}
" Filetype-specific ---------------------------------------------------------{{{

" Assembly {{{

augroup ft_asm
    au!
    au FileType asm setlocal noexpandtab shiftwidth=8 tabstop=8 softtabstop=8
augroup END

" }}}
" C {{{

augroup ft_c
    au!
    au FileType c setlocal foldmethod=marker foldmarker={,}
augroup END
" }}}
" }}}
" Plugin --------------------------------------------------------------------{{{

"Supertab {{{
let g:SuperTabDefaultCompletionType = "<c-n>"
"}}}

" Tagbar {{{
let g:tagbar_left=1
"}}}


"}}}
