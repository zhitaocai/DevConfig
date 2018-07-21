set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'

Plugin 'Lokaltog/vim-powerline' " 强大的状态栏插件
Plugin 'altercation/vim-colors-solarized' " 素雅配色方案
Plugin 'tomasr/molokai' " 多彩配色方案
Plugin 'nathanaelkane/vim-indent-guides' " 断点连接线
Plugin 'a.vim' " 快速在.cpp 和.h 中切换 
Plugin 'scrooloose/nerdcommenter' " 代码注释插件
Plugin 'scrooloose/nerdtree' " 文档工程目录结构预览
Plugin 'easymotion/vim-easymotion' "快速移动
Plugin 'suan/vim-instant-markdown' "即时markdown预览
Plugin 'plasticboy/vim-markdown' "markdown语法高亮
Plugin 'fholgado/minibufexpl.vim' "多文档编辑标签栏
Plugin 'godlygeek/tabular' "markdown语法高亮
Plugin 'Rykka/riv.vim' "reStructuredText语法即时预览
Plugin 'Rykka/InstantRst' "instantRst
Plugin 'chr4/nginx.vim' "nginx 配置文件美化的插件
Plugin 'chr4/sslsecure.vim' "ssl/tls 配置不安全的时候，高亮提示

" plugin from http://vim-scripts.org/vim/scripts.html
" 指定Github中vim-scripts仓库中的插件，直接指定插件名称即可，插件明中的空格使用“-”代替
" Plugin 'L9'

" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or jus t:PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
" 需要注释这句话才能运行Vbundle
" runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
" if has("autocmd")
"   filetype plugin indent on
" endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

" 设置默认编码
set fenc=utf-8 

" 显示行号
set nu 

" 自动缩进、统一缩进为4
set autoindent 
 
" 将制表符扩展为空格
set expandtab

" 设置编辑时制表符占用空格数
set tabstop=4

" 设置格式化时制表符占用空格数
set shiftwidth=4

" 让vim把连续数量的空格视为一个制表符
set softtabstop=4

" 设置搜索结果高亮
set hlsearch 

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索）
set incsearch 

" 设置搜索时忽略大小写  /word1\c 搜索时不区分大小写 /word2\C 搜索时区分大小写
set ignorecase

" 设置总是显示状态栏
set laststatus=2

" 设置显示光标当前位置
set ruler

" 高亮显示当前行列
set cursorline
set cursorcolumn

" 状态行颜色
highlight StatusLine guifg=SlateBlue guibg=Yellow
highlight StatusLineNC guifg=Gray guibg=White

" 不要闪烁
set novisualbell 

" 禁止光标闪烁
set gcr=a:block-blinkon0

" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 设置gvim显示字体为yahei consolas hybrid
" set guifont = YaHei\ Concolas\ Hybrid\ 11.5

" 设置禁止折行
" set nowrap

" 设置基于缩进进行代码折叠
set foldmethod=indent
 
" 设置基于语法进行代码折叠
" set foldmethod=syntax

" 启动vim时关闭折叠代码
set nofoldenable

" 括号自动补全
"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i
inoremap { {}<ESC>i
"inoremap < <><ESC>i
"inoremap ' ''<ESC>i
"inoremap " ""<ESC>i

" =============================================================================
" 快捷键修改
map <C-c> "+y
" map <C-v> "+p


" =============================================================================

" -----------------------------------------------------------------------------
" Powerline 插件
let g:Powerline_colorscheme='solarized256'
"set encoding=utf8 
set encoding=utf8 fileencodings=ucs-bom,utf-8,cp936


" -----------------------------------------------------------------------------
" 素雅配色方案
"syntax enable
"colorscheme solarized
"if has('gui_running')
"    set background=light
"else
"    set background=dark
"endif

" -----------------------------------------------------------------------------
" 多彩配色方案
set background=dark
colorscheme molokai

" -----------------------------------------------------------------------------
" 缩进代码关联线
" 随 vim 自启动 
"let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
"let g:indent_guides_start_level=2
" 色块宽度
"let g:indent_giudes_guide_size=1
" 快键键 i 开关缩进可视化
":nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" -----------------------------------------------------------------------------
" 在.cpp 和 .h 之间切换 
nmap <Leader>ch :A<CR>
" 子窗口中显示 .cpp 或 .h
nmap <Leader>sch :AS<CR>

" -----------------------------------------------------------------------------
" 使用NERDTree 插件查看工程文件 , 这里定义会快键为 fl(file list)
nmap <Leader>fl :NERDTreeToggle<CR>
" 设置NERDTree子窗口高度
let NERDTreeWinSize=32
" 设置NERDTree子窗口位置
let NERDTreeWInPos="right"
" 显示隐藏文件
let NERDTreeShowHidden=1
" NERDTred 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件是自动删除文件对应 buff
let NERDTreeAutoDeleteBuffer=1
" 打开NERDTree窗口时,自动显示Bookmarks
let NERDTreeShowBookmarks=1
"启动vim时自动打开NERDTree
"autocmd VimEnter * NERDTree


" -----------------------------------------------------------------------------
" 多文档编辑（标签栏）
" 显示/隐藏 MiniBufExplorer 窗口
map <Leader>bl :MBEToggle<cr>
" buffer 切换快捷键
map <C-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>
