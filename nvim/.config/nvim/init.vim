" PLugin handling
call plug#begin('~/.config/nvim/autoload/plugged')
    " Installing a colorscheme
    Plug 'morhetz/gruvbox'
call plug#end()

"Setting the colorscheme
colorscheme gruvbox

set number
set relativenumber

set noswapfile "no swap files

"set background=dark



"tab handling commands
"map <C-t> :tabnew <cr>
"map <C-Right> :tabnext <cr>
"map <C-Left> :tabprevious <cr>

"disable terminal keys in command mode
"map <Up> <NOP>
"map <Down> <NOP>
"map <Left> <NOP>
"map <Right> <NOP>
"map <BS> <NOP>
"map <Del> <NOP>

"disable terminal keys in insert mode
"imap <Up> <NOP>
"imap <Down> <NOP>
"imap <Left> <NOP>
"imap <Right> <NOP>
"imap <BS> <NOP>
"imap <Del> <NOP>

" Settings I always used
"set backspace=2  "make backspce working
"set tabstop=2 "set tab
"set shiftwidth=2  "indent a line 2 spaces with >> command
"set ignorecase "search case insensitive
"set scrolloff=5  "set when the screeen starts scrolling
"set cursorline "show the cursor actual line with coloring
"set virtualedit=all "let the cursore move behind EOL

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
 

