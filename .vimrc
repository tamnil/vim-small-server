"
" A (not so) minimal vimrc.
"

" You want Vim, not vi. When Vim finds a vimrc, 'nocompatible' is set anyway.
" We set it explicitely to make our position clear!
set nocompatible

call plug#begin('~/.vim/plugged')


" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-surround'
Plug 'ervandew/supertab'
Plug 'shougo/denite.nvim'

"Plug ''
"Plug ''
"Plug ''
"Plug ''
"Plug ''
"Plug ''
"Plug 'vim-css-color'
"
Plug 'xolox/vim-session'
Plug 'xolox/vim-misc'

" Initialize plugin system
call plug#end()


filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.



set mouse =a

set autoindent             " Indent according to previous line.
set expandtab              " Use spaces instead of tabs.
set softtabstop =4         " Tab key indents by 4 spaces.
set shiftwidth  =4         " >> indents by 4 spaces.
set shiftround             " >> indents to next multiple of 'shiftwidth'.

set backspace   =indent,eol,start  " Make backspace work as you would expect.
set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.

set showmode               " Show current mode in command-line.
set showcmd                " Show already typed keys when more are expected.

set incsearch              " Highlight while searching with / or ?.
set hlsearch               " Keep matches highlighted.

set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set cursorline             " Find the current line quickly.
set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

set list                   " Show non-printable characters.
if has('multi_byte') && &encoding ==# 'utf-8'
    let &listchars = 'tab:▸ ,extends:❯,precedes:❮,nbsp:±'
else
    let &listchars = 'tab:> ,extends:>,precedes:<,nbsp:.'
endif

" The fish shell is not very compatible to other shells and unexpectedly
" breaks things that use 'shell'.
if &shell =~# 'fish$'
    set shell=/bin/bash
endif

" Put all temporary files under the same directory.
" https://github.com/mhinz/vim-galore#handling-backup-swap-undo-and-viminfo-files
set backup
set backupdir   =$HOME/.vim/files/backup/
set backupext   =-vimbackup
set backupskip  =
set directory   =$HOME/.vim/files/swap//
set updatecount =100
set undofile
set undodir     =$HOME/.vim/files/undo/
"Plug ''
set history=999             " Increase history (default = 20)                                                                                                                                          
set undolevels=999          " Moar undo (default=100)   

"""  Denite key bindings {{{

nnoremap <leader><leader><leader> :Denite <CR>
nnoremap <leader><leader>f :Denite file <CR>
nnoremap <leader><leader>fr :Denite file_rec <CR>
nnoremap <leader><leader>fm :Denite file_mru <CR>
nnoremap <leader><leader>fl :Denite file_list <CR>
nnoremap <leader><leader>fra :Denite file_rec/async <CR>
nnoremap <leader><leader>frg :Denite file_rec/git <CR>
nnoremap <leader><leader>fb :Denite file buffer <CR>
nnoremap <leader><leader>b :Denite buffer <CR>
nnoremap <leader><leader>bt :Denite buffer_tab <CR>
nnoremap <leader><leader>j :Denite jump <CR>
nnoremap <leader><leader>w :Denite window <CR>
nnoremap <leader><leader>wg :Denite window/gui <CR>
nnoremap <leader><leader>t :Denite tab <CR>
nnoremap <leader><leader>m :Denite mappings <CR>
nnoremap <leader><leader>c :Denite command <CR>
nnoremap <leader><leader>r :Denite register  <CR>
nnoremap <leader><leader>d :Denite directory  <CR>
nnoremap <leader><leader>dr :Denite directory_rec  <CR>
nnoremap <leader><leader>dra :Denite directory_rec/async  <CR>
nnoremap <leader><leader>dm :Denite directory_mru  <CR>
nnoremap <leader><leader>g :Denite grep  <CR>
nnoremap <leader><leader>gg :Denite grep/git  <CR>
nnoremap <leader><leader>gv :Denite vimgrep  <CR>
" nnoremap <leader><leader> :Denite  <CR>
"  }}}                      end of Denite
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

nmap <F8> :TagbarToggle<CR>
nmap <F7> :NERDTreeToggle<CR> 

map <C-c> "+y<CR>
