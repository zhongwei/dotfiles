" -------------  
" 基本设置  
" -------------  
  
" 启用vim高级特性(置于配置最前)  
se nocompatible  

" 设置文件编码  
set encoding=utf-8  
set fenc=cp936  
set fileencodings=ucs-bom,utf-8,cp936,gb2312,gb18030,big5  
  
" 显示行号  
se nu  
  
" 设置默认字体  
se guifont=Monaco:h14  
  
" 设置默认窗口大小  
se lines=40 columns=140 

" 鼠标
set mouse=a 

" 设置当前行高亮, cursorline  
se cul  
  
" 将当前光标下的列高亮, cursorcolumn  
" 对于Pythoner比较有用  
"se cuc  
  
" 显示光标位置  
se ruler  

" 设置窗口透明度
set transparency=15

  
" 记录上次打开的位置  
if has("autocmd")  
autocmd BufRead *.txt set tw=78  
autocmd BufReadPost *  
\ if line("'\"") > 0 && line ("'\"") <= line("$") |  
\   exe "normal g'\"" |  
\ endif  
endif 

" -------------  
" 搜索设置  
" -------------  
  
" enable magic matching  
set magic  
  
" show matching bracets  
set showmatch  
  
" highlight search things  
set hlsearch  
  
" ignore case when searching  
set smartcase  
set ignorecase  
  
" incremental match when searching  
set incsearch  

" -------------  
" 代码设置  
" -------------  
  
" 设置语法高亮  
syntax enable  
syntax on  
  
" 显示缩进tab线  
se list lcs=tab:\|\   
  
" 设置代码折叠  
set foldenable  
set foldnestmax=1  
set foldmethod=syntax  
  
" -------------  
" 缩进设置  
" -------------  
  
" auto indent  
set autoindent  
  
" c indent  
set cindent  
  
" smart indet  
set smartindent  
  
" use hard tabs  
set tabstop=4  
" 将空格转换为tab, :%retab  
set noexpandtab  
set shiftwidth=4  
  
" 自动换行  
" break long lines  
set textwidth=1000  
" 设置某列高亮  
"se cc=+1  
  
" config C-indenting  
set cinoptions=:0,l1,t0,g0  
  
" enable filetype plugin  
filetype plugin indent on  
   
" use soft tabs for python  
autocmd Filetype python set et sta ts=4 sw=4  
  
" -------------  
" 快捷键设置  
" -------------  
  
" format codes  
map <F8> ggVG= <CR>  
  
" open multiple files in tabs  
map <F7> :tabedit <CR>  


" required
filetype off                  

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Powerline beautify the vim statuslines 
Plugin 'Lokaltog/vim-powerline'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" My Bundles here:

" vim-scripts repos

" Syntax
Plugin 'asciidoc.vim'
Plugin 'confluencewiki.vim'
Plugin 'html5.vim'
Plugin 'JavaScript-syntax'
"Plugin 'mako.vim'
Plugin 'moin.vim'
Plugin 'python.vim--Vasiliev'
Plugin 'xml.vim'

" Color
plugin 'colorselector'
Plugin 'desert256.vim'
Plugin 'Impact'
" Plugin 'matrix.vim'
Plugin 'vibrantink'
Plugin 'vividchalk.vim'

" Ftplugin
Plugin 'python_fold'

" Indent
"Plugin 'indent/html.vim'
Plugin 'IndentAnything'
Plugin 'Javascript-Indentation'
Plugin 'mako.vim--Torborg'
Plugin 'gg/python.vim'

" Plugin
Plugin 'The-NERD-tree'
Plugin 'AutoClose--Alves'
Plugin 'auto_mkdir'
Plugin 'cecutil'
Plugin 'fcitx.vim'
Plugin 'FencView.vim'
"Plugin 'FuzzyFinder'
Plugin 'jsbeautify'
Plugin 'L9'
Plugin 'Mark'
Plugin 'matrix.vim'
Plugin 'mru.vim'
Plugin 'The-NERD-Commenter'
"Plugin 'project.vim'
Plugin 'restart.vim'
Plugin 'taglist.vim'
"Plugin 'templates.vim'
"Plugin 'vimim.vim'
Plugin 'ZenCoding.vim'
Plugin 'css_color.vim'
Plugin 'hallettj/jslint.vim'
Plugin 'fatih/vim-go'
Plugin 'kien/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'Easygrep'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

" NERDTree config
" 使用F2键快速调出和隐藏它；
map <F4> :NERDTreeToggle<cr> 
" 关闭vim时，如果打开的文件除了NERDTree没有其他文件时，它自动关闭，减少多次按:q!
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
" 打开vim时自动打开NERDTree
autocmd vimenter * NERDTree /Users/zhongwei/learningc
"将NERDTree放置在编辑区右边  
  
let NERDTreeWinPos=1  
  
"设置NERDTree的宽度,默认为30  
  
let NERDTreeWinSize=25  
  
"let NERDTreeMinimalUI=1   
  
"是否显示书签  
  
let NERDTreeShowBookmarks=0  
  
"显示隐藏文件  
  
"let NERDTreeShowHidden=1   
  
let NERDTreeStatusline=0  
  
let NERDChristmasTree=1  

"开启NERDTree后进入vim默认光标在正文一侧文件编辑区
wincmd w
autocmd VimEnter * wincmd w

" vim-powerline
set laststatus=2
let g:Powerline_symbols='fancy'
set t_Co=256
let g:Powerline_cache_enabled=1
let g:Powerline_debugging_pyeval=1
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)



colorscheme vividchalk
"colorscheme herald

