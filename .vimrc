set nocompatible

filetype off 
set rtp=~/.vim/bundle/vim_lib
call vim_lib#sys#Autoload#init('~/.vim', 'bundle') 

Plugin 'vim_lib'
Plugin 'vim_plugmanager'
Plugin 'nerdtree'
Plugin 'vim-quickrun'
Plugin 'vim_git'
Plugin 'vim-startify'
Plugin 'YouCompleteMe' 
Plugin 'vim-airline'
Plugin 'vim-airline-themes'
Plugin 'ctrlp.vim'
Plugin 'syntastic'

filetype indent plugin on

" Startify
 let g:startify_change_to_dir = 0
 let g:startify_files_number = 8
 let g:startify_bookmarks = ['~/.vimrc',]
 let g:startify_skiplist = ['vimrc',]
 let g:startify_custom_header = map(split(system('fortune ~/.vim/fortunes | cowsay -W 60'), '\n'), '"   ". v:val') + ['','']

let g:airline_theme='cobalt2'
let g:airline_powerline_fonts = 1
set t_Co=256

set tabstop=4 
set shiftwidth=4
set smarttab
set expandtab "Ставим табы пробелами
set softtabstop=4 "4 пробела в табе

"Автоотступ
set autoindent
"
""Подсвечиваем все что можно подсвечивать
let python_highlight_all = 1

set laststatus=2

"Настройки Ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
