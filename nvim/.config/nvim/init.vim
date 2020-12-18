" Plugin handling
call plug#begin('~/.config/nvim/autoload/plugged')
    Plug 'morhetz/gruvbox'
    Plug 'dracula/vim',{'as':'dracula'}
    Plug 'liuchengxu/space-vim-dark'
    Plug 'kassio/neoterm'
    Plug 'preservim/nerdtree'
    Plug 'junegunn/vader.vim' 
call plug#end()

" Setting the colorscheme
"colorscheme gruvbox
colorscheme dracula
"colorscheme space-vim-dark


" Basic settings
set noswapfile 
set number
set relativenumber
set shiftwidth=4  "indent a line 4 spaces with >> command
set scrolloff=5  "set when the screeen starts scrolling
set cursorline "show the cursor actual line with coloring
set virtualedit=all "let the cursore move behind EOL
"set backspace=2  "make backspce working
"set tabstop=2 "set tab
set ignorecase "search case insensitive

" Sourcing other files
runtime autoload/experimental.vim

" Unsetting space in normal mode and setting it as leader
nnoremap <space> <nop>
let mapleader=' '
let localleader=' '

"tab handling commands
noremap <C-Right> :tabnext <cr>
noremap <C-Left> :tabprevious <cr>

" Easier navigation in help menu (follow link and back to previous position)
" TODO Debug this it doesn't work
"nnoremap <buffer> <CR> <C-]> 
"nnoremap <buffer> <BS> <C-T>

" fast editing and sourcing of vimrc
noremap <leader>ev :edit $MYVIMRC <cr>
noremap <leader>sv :source $MYVIMRC <cr>

" Signature abbreviation
iabbrev ssig --<CR>Istvan Ladjanszki<CR>istvan.ladjanszki@gmail.com

" Remap ESC
" This can be useful since exiting to normal mode does not require to leave
" the home row of the keyboard
" The combination should be one that is not used frquently in insert mode
"inoremap jk <esc>
"inoremap kj <esc>
"inoremap <esc> <nop>

""disable arrow keys
"noremap <Up> <NOP>
"noremap <Down> <NOP>
"noremap <Left> <NOP>
"noremap <Right> <NOP>
"noremap <BS> <NOP>
"noremap <Del> <NOP>
"
"easier navigation in long lines
"nnoremap <Up> gk      
"nnoremap <Down> gjhh  
"nnoremap k gk
"nnoremap j gj
 

" === PYTHON ===========================================================
augroup pythonGroup
  autocmd!
  autocmd FileType python nnoremap <buffer> <localleader>q I# <esc>
augroup END

" === LUA ==============================================================
augroup luaGroup
  autocmd!
  autocmd FileType lua nnoremap <buffer> <localleader>q I-- <esc>
augroup END

" === LATEX ============================================================
augroup latgexGroup
  autocmd!
  autocmd FileType latex nnoremap <buffer> <localleader>q I% <esc>
augroup END

" === VIML =============================================================
augroup vimlGroup
  autocmd!
  autocmd FileType vim nnoremap <buffer> <localleader>q I" <esc>
augroup END

" === NEOTERM ==========================================================
" Exit terminal mode (to normal mode) with esc
tnoremap <Esc> <C-\><C-n>

" Toggle terminal split in termal-, normal-, and insert mode
"tnoremap <C-cr> :Ttoggle<cr>
"nnoremap <C-cr> :Ttoggle<cr>
"inoremap <C-cr> :Ttoggle<cr>

" Toggle neoterm buffer at the bottom of the window
nnoremap <leader><cr> :Ttoggle<cr>
tnoremap <leader><cr> :Ttoggle<cr>

" Start neoterm in insert mode
let g:neoterm_autoinsert=1

" open terminal in bottom full width split
" For more info see :help :botright or :help mods
let g:neoterm_default_mod='botright' 

" terminal split height
let g:neoterm_size=16 

" scroll to the bottom when running a command
let g:neoterm_autoscroll=1 

"let g:neoterm_direct_open_repl=1
"let g:neoterm_repl_python='ipython'

" send current line to REPL and move down
"nnoremap <c-cr> :TREPLSendLine<cr>j 

" send current selection to REPL
"vnoremap <c-cr> :TREPLSendSelection<cr> 
 
" === SPLIT HANDLING ===================================================
" Movel to split left
nnoremap <leader>sh <c-w>h 

" Move to split below
nnoremap <leader>sj <c-w>j 

" Move to split above
nnoremap <leader>sk <c-w>k 

" Move to split right
nnoremap <leader>sl <c-w>l 

" Other split commands to map to <leader>s
""Max out the height of the current split
"ctrl + w _
"
""Max out the width of the current split
"ctrl + w |
"
""Normalize all split sizes, which is very handy when resizing terminal
"ctrl + w =
"
""Break out current window into a new tabview
"Ctrl+W T
"
""Close every window in the current tabview but the current one
"Ctrl+W o"
nnoremap <leader>so <c-w>o 
 

