" Terminal 256 colors
set t_Co=256

set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Dealing with trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
highlight CursorLine cterm=NONE ctermbg=yellow ctermfg=black guibg=darkred guifg=black

au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/

au WinEnter * setlocal cursorline
au WinLeave * setlocal nocursorline

" Removes trailing spaces
function TrimWhiteSpace()        
  %s/\s*$//
 ''
endfunction

let mapleader = ","

map <leader><leader> :call TrimWhiteSpace()<CR>
map <C-t> <Esc>:tabnew<CR>
map <C-k> :bn<CR>
map <C-j> :bp<CR>
map <leader>c :set cursorline!<CR>
map <F2> :NERDTreeToggle<CR>

syntax on

" tabs and indention
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set expandtab
set cursorline

set backspace=indent,eol,start

" Wrap text to 80 characters
set textwidth=80
" Show column marker on 80 characters
"set colorcolumn=80
"
" Plugin specials
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <C-n> :NERDTreeToggle<CR>

" Set color scheme
set background=dark
colorscheme Tomorrow-Night-Eighties

"For hybrid color scheme
"colorscheme hybrid
"let g:hybrid_custom_term_colors = 1
"let g:hybrid_reduced_contrast = 1 " Remove this line if using the default palette.

" Set marker on 80 character
highlight ColorColumn ctermbg=yellow
call matchadd('ColorColumn', '\%81v', 100)


