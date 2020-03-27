" Vundle 环境设置
set nocompatible              " be iMproved, required
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'derekwyatt/vim-protodef'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
Plugin 'lilydjwg/fcitx.vim'
Plugin 'mbbill/undotree'
Plugin 'preservim/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'spf13/vim-autoclose'
Plugin 'Yggdroot/LeaderF'
Plugin 'scrooloose/nerdcommenter'
" 插件列表结束
"
call vundle#end()
"filetype plugin indent on

" Vim 配置
filetype on                                 " 开启文件类型侦测
filetype plugin on                          " 根据侦测到的不同类型加载对应的插件
syntax enable                               " 开启语法高亮功能
syntax on                                   " 允许用指定语法高亮配色方案替换默认方案
let g:Powerline_colorscheme='solarized256'  " 设置状态栏主题风格

" Search
set incsearch                               " 开启实时搜索功能
set ignorecase                              " 搜索时大小写不敏感
set nocompatible                            " 关闭兼容模式
set wildmenu                                " vim 自身命令行模式智能补全

" Support
set laststatus=2                            " 总是显示状态栏
set ruler                                   " 显示光标当前位置
set number                                  " 开启行号显示
set cursorline                              " 高亮显示当前行/列
"set cursorcolumn
set hlsearch                                " 高亮显示搜索结果
set nowrap                                  " 禁止折行
set mouse=a                                 " 打开鼠标
set gcr=a:block-blinkon0                    " 禁止光标闪烁

" Tab
set tabstop=4                               " tab替换为4个空格
set shiftwidth=4                            " 设置格式化时制表符占用空格数
set autoindent                              " 自动缩进
set expandtab                               " tab替换为空格
set softtabstop=4                           " 关闭softtabstop 永远不要将空格和tab混合输入

" Fold
"set foldmethod=indent                      " 基于缩进或语法进行代码折叠
set foldmethod=syntax                       " 基于缩进或语法进行代码折叠
set nofoldenable"                           " 启动 vim 时关闭折叠代码

" Vim 配色
set background=dark
"colorscheme solarized
"colorscheme molokai

" 定义快捷键的前缀，即<Leader>
let mapleader=" "

" Map
map      <Leader>u	:UndotreeToggle	<CR>
map      <Leader>e	:NERDTreeToggle <CR>
map      <Leader>t	:TagbarToggle	<CR>
nmap     <Leader>q	:q  <CR>
nmap     <Leader>Q	:q! <CR>
nmap     <Leader>y  "+y
nmap     <Leader>p  "+p
nmap     <Leader>w  :w  <CR>
nmap     <Leader>W  :wq <CR>

" 依次遍历子窗口
nnoremap nw         <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
nmap <Leader>M %

if has("cscope")
	set csprg=/usr/bin/cscope
	set cst
	set csto=0
	set nocsverb
	if filereadable("cscope.out")
		cs add cscope.out
	endif
	"if $CSCOPE_DB != ""
	"	cs add $CSCOPE_DB
	"endif	
	"if $CSCOPE_DB_ADP_COOL != ""
	"	cs add $CSCOPE_DB_ADP_COOL 
	"endif	
	if $CSCOPE_DB_ADP_COOL_HQX != ""
		cs add $CSCOPE_DB_ADP_COOL_HQX
	endif	
	if $CSCOPE_DB_MARIO_HQX != ""
		cs add $CSCOPE_DB_MARIO_HQX
	endif	
	set csverb
	nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
	nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
	nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
endif

" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
