" Plugin handling
call plug#begin('~/.config/nvim/autoload/plugged')
    " Installing a colorscheme
    Plug 'morhetz/gruvbox'

    " Neoterm (terminal inside neovim)
    Plug 'kassio/neoterm'
call plug#end()

" Setting the colorscheme
colorscheme gruvbox

" Basic settings
set noswapfile 
set number
set relativenumber
set shiftwidth=2  "indent a line 2 spaces with >> command
set scrolloff=5  "set when the screeen starts scrolling
set cursorline "show the cursor actual line with coloring
set virtualedit=all "let the cursore move behind EOL
"set backspace=2  "make backspce working
"set tabstop=2 "set tab
"set ignorecase "search case insensitive

" Unsetting space in normal mode and setting it as leader
nnoremap <space> <nop>
let mapleader=' '
let localleader=' '

"tab handling commands
noremap <C-Right> :tabnext <cr>
noremap <C-Left> :tabprevious <cr>

" Exercises from the book Learn Vimscript the hard way

" Echo a cat on every startup
augroup initGroup
  autocmd!
  autocmd VimEnter * echo '>^.^<' 
augroup END

" Mapping to sink a line
"noremap <leader>- ddp

" Mapping to raise a line (does not work properly)
"noremap <leader>_ ddP

" Uppercase a word in insert mode
nnoremap <leader>u <esc>viwU<esc>Xi 

" fast editing and sourcing of vimrc
noremap <leader>ev :split $MYVIMRC <cr>
noremap <leader>sv :source $MYVIMRC <cr>

" Abbreviations
" This is a useful feature for frequently typed text snippets
iabbrev ssig --<CR>Istvan Ladjanszki<CR>istvan.ladjanszki@gmail.cov

"" Remap ESC
"inoremap jk <esc>
"inoremap <esc> <nop>
"
""disable arrow keys
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>
"noremap <BS> <NOP>
"noremap <Del> <NOP>

" Autocommands                        
" Indenting html files correctly on writing
"autocmd BufWritePre *.html :normal gg=G

" Don't wrap long lines in html files (if created or readed)
"autocmd BufNewFile,BufRead *.html setlocal nowrap

" Python specific autocommands
augroup pythonGroup
  autocmd!
  autocmd FileType python nnoremap <buffer> <localleader>q I# <esc>
augroup END

" Lua specific autocommands
augroup luaGroup
  autocmd!
  autocmd FileType lua nnoremap <buffer> <localleader>q I-- <esc>
augroup END

" LaTeX specific autocommands
augroup latgexGroup
  autocmd!
  autocmd FileType latex nnoremap <buffer> <localleader>q I% <esc>
augroup END

" VARIABLES
" Basics
let foo = 'bar'
let hehe = '42'

" Options as variables
" Options are the one we setted at the beginning of the vimrc


 
 


"easier navigation in long lines
"nnoremap <Up> gk      
"nnoremap <Down> gjhh  
"nnoremap k gk
"nnoremap j gj


" My old comment formatting maps
"map <F2> ddpk$J:s/C /!<CR>
"fortran 77 style comments to !style comments

"map <F3> 1\|/!<CR>d$72\|p
"put in line comments to column 73

"map <F4> 1\|/\/<CR>d$72\|p 
"put in line comments to column 73

"map <F5> 1\|/%<CR>d$72\|p
"Latex comment to column 73
 

