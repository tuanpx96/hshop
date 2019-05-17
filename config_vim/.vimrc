" My Vim setting of tuan pham

" UI config {{{
" Enable syntax highlighting
syntax enable

"Show line numbers
set number

"Set tabs to have 4 spaces
set ts=4

"English: Indent when moving to the next line while writing code
"Vietnamese: Thut le khi viet code
set autoindent

"English: Expand tabs into spaces
"Vietnamese:  Mo rong cac tabs thanh spaces
set expandtab

"English: Show a line visual line under the cursor's current line
"Vietnamese:  Hien thi 1 dong duoi dang con tro chuot hien tai
set cursorline

"English: Show the matching part of the pair for [] {} and ()
"Vietnamese: Hien thi ket noi giua cac dau ngoac
set showmatch

"Enlish: Enable all Python systax highlighting features
"Vietnamese: Bat cac tinh nang to sang cu phap Python
let python_highlight_all = 1
"}}}

"Vundle config {{{
set nocompatible              " be iMproved, required
filetype off                  " required

"English: Set the runtime path to include Vundle and initialize
"Vietnamese: Dat duong danvundle trong thoi gian chay cua vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"English: Let Vundle manage Vundle, required
"Vietnamese: bat dau su dung hoi quan li vundle, bat buoc
Plugin 'VundleVim/Vundle.vim'

"English: All of your Plugins must be added before the following line
"Vietnamese: Tat ca cac Plugin cua ban phai duoc them vao truoc dong sau
call vundle#end()            " required
filetype plugin indent on    " required      
"}}}

"Nerdtree config {{{
"English: Neardtree plugin
Plugin 'scrooloose/nerdtree'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"}}}

"Ctrlp config {{{
"Endlish: Ctrlp plugin
Plugin 'kien/ctrlp.vim'

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
"}}}

"Syntastic config {{{
"English: Syntastic Plugin
Plugin 'scrooloose/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pylint']

"}}}

" Plugin 'Vim-Easymotion config {{{
" English: vim Easymotion Plugin
Plugin 'easymotion/vim-easymotion'

"}}}

" YouCompleteMe congig {{{
" Plugin 'Valloric/YouCompleteMe'
" English: Vim you plugina
Plugin 'Valloric/YouCompleteMe'

let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
"}}}
