set nocompatible                      " not compatible with the old-fashion vi mode
set history=1000                      " keep 1000 lines of command line history
set undolevels=100                    " 100 step undo
set autoread                          " auto read when file is changed from outside
set viminfo=                          " disable .viminfo file
set number                            " show linenumber
filetype on                           " enable filetype detection
filetype indent on                    " enable filetype-specific indenting
filetype plugin on                    " enable filetype-specific plugins
syntax on                             " syntax highlight
set hlsearch                          " search highlighting
set incsearch                         " incremental search

"" bo backup file
set nobackup                          " no *~ backup files
set noswapfile
set nowritebackup

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

"" key mapping

" enter to cancel searched highlight
noremap <CR> :nohlsearch<CR>

" select ALL
map <C-A> ggVG

" nerdcommenter shortcut
map <Leader><Leader> <Leader>c<space>
