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
Plugin 'scrooloose/syntastic'
Plugin 'chriskempson/base16-vim'
Plugin 'vimwiki/vimwiki'

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
set colorcolumn=81
set textwidth=999

" tab setting
set softtabstop=4
set shiftwidth=4
set tabstop=4

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
set background=dark

try
  "let g:solarized_termcolors=256
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

" seem useless
set fillchars=diff:⣿,vert:│
set fillchars=diff:⣿,vert:\|

" split
set splitbelow
set splitright

" folding
set foldcolumn=1
set foldlevel=100
set foldmethod=marker

" command height
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

" switch to UTF-8 encoding
nnoremap <leader>u :e ++enc=utf-8<CR>

" identation
nmap <TAB> v>
nmap <S-TAB> v<
vmap <TAB> >gv
vmap <S-TAB> <gv

" Tagbar hotkey
nmap <F3> :TagbarToggle<CR>

" sudo to write
cnoremap w!! w !sudo tee % >/dev/null

" Move cursor by display lines when wrapping
noremap j gj
noremap k gk
noremap gj j
noremap gk k

" folding keymap {{{
" close when open, and open when close
nnoremap <Space> za
vnoremap <Space> za
" Open all fold
nnoremap <leader>A zR
" Close all fold
nnoremap <leader>C zM
"}}}

" Insert Mode Completion {{{
inoremap <c-f> <c-x><c-f>
inoremap <c-]> <c-x><c-]>
inoremap <c-l> <c-x><c-l>

" paste mode toggle
nnoremap <leader>o :set paste!<CR>
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
" CPP {{{
augroup ft_cpp
    au!
    au FileType cpp setlocal foldmethod=marker foldmarker={,}
augroup END
" }}}
" lex {{{
augroup ft_lex
    au!
    au FileType lex setlocal foldmethod=marker foldmarker={,}
augroup END
" }}}
" yacc {{{
augroup ft_yacc
    au!
    au FileType yacc setlocal foldmethod=marker foldmarker={,}
augroup END
" }}}
" HTML {{{
augroup ft_html
    au!
    au FileType html setlocal foldmethod=indent
    au FileType html setlocal tabstop=2 shiftwidth=2 softtabstop=2
augroup END
" }}}
" vimwiki {{{
augroup ft_vimwiki
    au!
    au FileType vimwiki setlocal foldmethod=indent
    au FileType vimwiki setlocal tabstop=2 shiftwidth=2 softtabstop=2
augroup END
" }}}
" python {{{
augroup ft_python
    au!
    au FileType python setlocal foldmethod=indent
    au FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 expandtab
augroup END
" }}}
" {{{
augroup ft_vimwiki
    au!
    au FileType vimwiki setlocal foldmethod=indent
    au FileType vimwiki setlocal tabstop=2 shiftwidth=2 softtabstop=2
augroup END
" }}}
" }}}
" Plugin --------------------------------------------------------------------{{{

"Supertab {{{
let g:SuperTabDefaultCompletionType = "<c-n>"
"}}}

" Tagbar {{{
let g:tagbar_left=1
let g:tagbar_autofocus=1
let g:tagbar_autoclose=0
"}}}

" mult-cursor {{{
" Map start key separately from next key
let g:multi_cursor_start_key='<F6>'
" }}}

" vimwiki settings {{{
let vimwiki_path=$HOME.'/vimwiki/'
let vimwiki_html_path=$HOME.'/vimwiki_html/'
let g:vimwiki_list = [{'path_html':vimwiki_html_path,
			\ 'template_path':vimwiki_html_path.'vimwiki-assets/',
			\ 'template_default': 'default',
			\ 'template_ext': '.tpl',
			\ 'auto_export': 0}]
nnoremap <leader>wha :VimwikiAll2HTML<CR>
"}}}
"}}}
