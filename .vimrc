set number
let mapleader = ";" 
set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=indent,eol,start

" 设置文内智能搜索提示
" 高亮search命中的文本
set hlsearch
" 打开增量搜索模式,随着键入即时搜索
set incsearch
" 搜索时忽略大小写
set ignorecase
" 有一个或以上大写字母时仍大小写敏感
set smartcase
" 突出显示当前列
 set cursorcolumn
" " 突出显示当前行
 set cursorline


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'https://github.com/klen/python-mode.git'

Plugin 'https://github.com/flazz/vim-colorschemes.git'

Plugin 'tpope/vim-fugitive'

Plugin 'scrooloose/nerdtree'

Plugin 'easymotion/vim-easymotion'

Plugin 'jacoborus/tender.vim'

Plugin 'bling/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
syntax on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line 

" config for pymode 
" Override go-to.definition key shortcut to Ctrl-]
 let g:pymode_rope_goto_definition_bind = "<C-]>"
"
" " Override run current python file key shortcut to Ctrl-Shift-e
 let g:pymode_run_bind = "<C-S-e>"
"
" " Override view python doc key shortcut to Ctrl-Shift-d
 let g:pymode_doc_bind = "<C-S-d>"
 

" config for my colorscheme 
colorscheme tender
let g:lightline = { 'colorscheme': 'tender' }
let g:airline_theme = 'tender'
let macvim_skip_colorscheme=1

" config for airline
" The default setting of 'laststatus' is for the statusline to not appear
" until a split is created. If you want it to appear all the time, add the
" following to your vimrc: set laststatus=2
set laststatus=2

"config for easymotion
 let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key
" binding.
" " `s{char}{label}`
 nmap s <Plug>(easymotion-overwin-f)
" " or
" " `s{char}{char}{label}`
" " Need one more keystroke, but on average, it may be more comfortable.
 nmap s <Plug>(easymotion-overwin-f2)
"
" " Turn on case insensitive feature
 let g:EasyMotion_smartcase = 1
"
" " JK motions: Line motions
 map <Leader>j <Plug>(easymotion-j)
 map <Leader>k <Plug>(easymotion-k)

 " Move to word
 map  <Leader>w <Plug>(easymotion-bd-w)
 nmap <Leader>w <Plug>(easymotion-overwin-w)

 " Move to line
 map <Leader>L <Plug>(easymotion-bd-jk)
 nmap <Leader>L <Plug>(easymotion-overwin-line)

"==========================================
"" HotKey Settings  自定义快捷键设置
"==========================================


" 关闭方向键, 强迫自己用 hjkl
 map <Left> <Nop>
 map <Right> <Nop>
 map <Up> <Nop>
 map <Down> <Nop>
"

" 分屏窗口移动, Smart way to move between windows
 map <C-j> <C-W>j
 map <C-k> <C-W>k
 map <C-h> <C-W>h
 map <C-l> <C-W>l

" tab 操作
" http://vim.wikia.com/wiki/Alternative_tab_navigation
" http://stackoverflow.com/questions/2005214/switching-to-a-particular-tab-in-vim

" tab切换
 map <leader>th :tabfirst<cr>
 map <leader>tl :tablast<cr>

 map <leader>tj :tabnext<cr>
 map <leader>tk :tabprev<cr>
 map <leader>tn :tabnext<cr>
 map <leader>tp :tabprev<cr>

 map <leader>te :tabedit<cr>
 map <leader>td :tabclose<cr>
 map <leader>tm :tabm<cr>

 " normal模式下切换到确切的tab
 noremap <leader>1 1gt
 noremap <leader>2 2gt
 noremap <leader>3 3gt
 noremap <leader>4 4gt
 noremap <leader>5 5gt
 noremap <leader>6 6gt
 noremap <leader>7 7gt
 noremap <leader>8 8gt
 noremap <leader>9 9gt
 noremap <leader>0 :tablast<cr>

 " 搜索相关
 " Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
 map <space> /
 " 进入搜索Use sane regexes"
 nnoremap / /\v
 vnoremap / /\v
