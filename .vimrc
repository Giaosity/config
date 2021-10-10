"-----------------------------------------------
" Settings
"-----------------------------------------------
"关闭vi一致性
set nocompatible
"显示行号
set number
"显示相对行号
set relativenumber
"开启高亮
syntax on
"最底下保留10行
set scrolloff=10
"突出显示当前行
set cursorline
"突出显示当前列
" set cursorcolumn
"设置行宽
set textwidth=80
"启用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
"括号匹配
set showmatch
"tab大小
set ts=4
set expandtab
"自动缩进
set autoindent
set smartindent


"-----------------------------------------------
" Plugins
"-----------------------------------------------
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'joshdick/onedark.vim'
Plugin 'kadekillary/Turtles'
""CSS颜色显示
" vim主题
" set background=dark
" colorscheme space_vim_theme 
" colorscheme onedark
colorscheme turtles 

" NERDTree
Plugin 'The-NERD-tree'
""配置:F2显示当前目录树
map <F2> :NERDTreeToggle<CR>
""窗口位置
let g:NERDTreeWinPos='left'
""窗口尺寸
let g:NERDTreeSize=25 

" Tagbar
Plugin 'preservim/tagbar'
""配置:F4显示tagbar
map <F4> :TagbarToggle<CR>
""窗口尺寸
let g:tagbar_width=25
""自动打开tagbar
au BufNewFile,BufRead *.py,*.c,*.cpp,*.go call tagbar#autoopen()

" Airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
""配置主题
" let g:airline_theme='deus'
" let g:airline_theme='onedark'
let g:airline_theme='turtles'
""显示tab
let g:airline#extensions#tabline#enabled=1 
""关闭右下角trailing
let g:airline#extensions#whitespace#enabled = 0
""设置tab键映射
nmap <tab> :bn<cr>
"vim-trailing-whitespace    delitimate   nerdCommenter


call vundle#end()
