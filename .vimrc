" 定义快捷键的前缀，即<Leader>
let mapleader=";"

" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on

set background=dark
"colorscheme solarized
"colorscheme molokai

set mouse=a

" 总是显示状态栏
set laststatus=2
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
" set cursorcolumn
" 高亮显示搜索结果
set hlsearch


" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on

" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'derekwyatt/vim-protodef'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
Plugin 'lilydjwg/fcitx.vim'
" 插件列表结束
call vundle#end()
filetype plugin indent on


" Cscope
" if filereadable("cscope.out") 
"    cs add cscope.out 
" endif 

"if has("cscope")
"	set cscopetag   " 使支持用 Ctrl+]  和 Ctrl+t 快捷键在代码间跳来跳去
"	" check cscope for definition of a symbol before checking ctags:
"	" set to 1 if you want the reverse search order.
"	set csto=1
"
"	" add any cscope database in current directory
"	if filereadable("cscope.out")
"		cs add ~/E_ROC/apps/qnx_ap/cscope.out
"		" else add the database pointed to by environment variable
"	elseif $CSCOPE_DB !=""
"		cs add $CSCOPE_DB
"	endif
"
"	" show msg when any other cscope db added
"	set cscopeverbose
"
"	nmap <C-/>s :cs find s <C-R>=expand("<cword>")<CR><CR>
"	nmap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
"	nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
"	nmap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
"	nmap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
"	nmap <C-/>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
"	nmap <C-/>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
"	nmap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR>
"endif

if has("cscope")
	set csprg=/usr/bin/cscope
	set cst
	set csto=0
	set nocsverb
	if filereadable("cscope.out")
		cs add cscope.out
	elseif $CSCOPE_DB != ""
		cs add $CSCOPE_DB
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
