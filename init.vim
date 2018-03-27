set number
set nohlsearch
let mapleader=","

"Mappings
noremap <Leader>ev :e $MYVIMRC<cr>
nnoremap <Leader>sv :source $MYVIMRC<cr>

"remove trailing whitespace
nmap <Leader>rtw :%s/\s\+$//e<CR>

"select all
nmap <C-a> ggVG<cr>

"easy settings of tabbing
nmap <Leader>t2 :set ts=2 sw=2 expandtab<cr>
nmap <Leader>t4 :set ts=4 sw=4 expandtab<cr>
set ts=2 sw=2 expandtab

"---------------------Split Management---------------"
" For horiz splits with :sp and vertical splits for :vsp
nmap <C-L> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>

filetype plugin indent on

" Install with
" curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"run with :PlugInstall or :PlugUpdate
call plug#begin('~/.local/share/nvim/plugged')
"Files
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'MarcWeber/vim-addon-mw-utils' " Need for vim-snipmate
Plug 'tomtom/tlib_vim' " needed for vim-snipmate
Plug 'garbas/vim-snipmate'
"Visual Interface
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'bronson/vim-trailing-whitespace'
"Editing
Plug 'terryma/vim-multiple-cursors' "https://github.com/terryma/vim-multiple-cursors
Plug 'tpope/vim-surround' "https://github.com/tpope/vim-surround
Plug 'tpope/vim-vinegar' "https://github.com/tpope/vim-vinegar
Plug 'tpope/vim-fugitive' "https://github.com/tpope/vim-fugitive
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } "https://github.com/Shougo/deoplete.nvim
"Programming Languages
Plug 'nathanalderson/yang.vim' "https://github.com/nathanalderson/yang.vim
Plug 'derekwyatt/vim-scala'
"Plug 'pangloss/vim-javascript' "https://github.com/pangloss/vim-javascript
call plug#end()

"Plugin Settings
"CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|class\|cisco-ios\|netsim\|ncs-cdb\|state\|logs\|packages/juniper-junos\|dist'
"let g:ctrlp_user_command = 'find %s -type f | grep -v "`cat .ctrlpignore`"'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_autoignore_extension = 0
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
        let g:ctrlp_user_command = 'ag -l -g "" %s'
endif
nmap <c-t> :CtrlPBufTag<cr>
nmap <c-r> :CtrlPMRUFiles<cr>
nmap <c-c> :CtrlPClearAllCaches<cr>

"Airline
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts=1

"Nerdtree
nmap - :NERDTreeToggle<cr>

"deoplete
"let g:deoplete#enable_at_startup = 1
