" basic config
set nocompatible     " 设置不兼容原始vi模式

set number           " 显示行号
set hlsearch         " 搜索结果高亮

set autoindent       " 自动缩进
set smartindent      " 智能缩进

set tabstop=4        " 设置 tab 制表符所占宽度为 4
set softtabstop=4    " 设置按 tab 时缩进的宽度为 4
set shiftwidth=4     " 设置自动缩进宽度为 4
set expandtab        " 缩进时将 tab 制表符转换为空格

filetype on
filetype indent on           " 自适应不同语言的智能缩进
filetype plugin on           " 设置加载对应文件类型的插件

syntax enable                " 开启语法高亮功能
syntax on                    " 自动语法高亮

set t_Co=256                 " 开启256色支持
set encoding=utf-8

set background=dark

set laststatus=2             " 总是显示状态栏
set wildmenu                 " vim自身命名行模式智能补全

set autoread                " 文件在vim之外修改过，自动重新读入
set autowrite
set confirm                  " 在处理未保存或只读文件的时候，弹出确认

set history=24
set undofile
set undodir=~/.vim/.undodir


" plug-in manager 
call plug#begin('~/.vim/plugged.vim')
" call your plugin here

" NERDTree
  Plug 'preservim/nerdtree'
  Plug 'vim-airline/vim-airline' | Plug 'vim-airline/vim-airline-themes'
" Plug 'ycm-core/YouCompleteMe',{ 'do': './install.py --tern-completer' }
  Plug 'Valloric/YouCompleteMe',{ 'do': './install.py --tern-completer' }
" Plug 'codota/tabnine-vim'          " 代码自动完成
"
" Plug 'dracula/vim'

" html
if count('g:language_group', 'html')
  Plug 'docunext/closetag.vim' " 自动关闭 HTML 标签
endif

" go
if count('g:language_group', 'go')
    Plug 'fatih/vim-go',{'for':'go'}
endif

call plug#end()


" airline
" let g:airline#extensions#tabline#enabled=1
" let g:airline#extensions#tabline#left_sep = ''
" let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''