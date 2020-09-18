" Plug
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }            执行命令时加载
" Plug 'scrooloose/nerdtree', { 'for': 'clojure' }                   编辑C文件才加载
" Plug 'scrooloose/nerdtree', { 'for': ['clojure', 'java'] }         编辑C,JAVA文件才加载

Plug 'altercation/vim-colors-solarized'
Plug 'tomasr/molokai'
Plug 'rakr/vim-one'
Plug 'kaicataldo/material.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'derekwyatt/vim-protodef'
"Plug 'Lokaltog/vim-easymotion'                                                      " 快速跳转
Plug 'suan/vim-instant-markdown'
"Plug 'lilydjwg/fcitx.vim'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree',          { 'on':  'NERDTreeToggle'  }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'Yggdroot/LeaderF'
Plug 'scrooloose/nerdcommenter'
Plug 'terryma/vim-multiple-cursors'
Plug 'ludovicchabant/vim-gutentags'
Plug 'dense-analysis/ale'                                                           " Check code error
"修改比较，显示修改
Plug 'mhinz/vim-signify'
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-indent'
Plug 'kana/vim-textobj-syntax'
Plug 'kana/vim-textobj-function',   { 'for':['c', 'cpp', 'vim', 'java'] }
Plug 'sgur/vim-textobj-parameter'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'tpope/vim-unimpaired'
Plug 'Shougo/echodoc.vim'                                                           " 函数参数提示
Plug 'sbdchd/neoformat'                                                             " 代码格式化
Plug 'vim-scripts/taglist.vim'                                                      " tag显示
Plug 'skywind3000/vim-preview'
Plug 'skywind3000/gutentags_plus'                                                   " tag 数据库自动切换
"Plug 'ycm-core/YouCompleteMe'                                                       " 代码提示
"Plug 'dkprice/vim-easygrep'                                                         " Replace
Plug 'tpope/vim-commentary'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }                                 " FZF
Plug 'ntpeters/vim-better-whitespace'                                               " 显示多余空格
Plug 'cohama/agit.vim'                                                              " 查看当前文件提交历史
Plug 'vim-airline/vim-airline'                                                      " 状态栏美化
Plug 'vim-airline/vim-airline-themes'
Plug 'christoomey/vim-tmux-navigator'                                               " Ctrl+h j k l
Plug 'mileszs/ack.vim'                                                              " Ack
Plug 'jiangmiao/auto-pairs'                                                         " 括号close
Plug 'rking/ag.vim'                                                                 " Search
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'KeitaNakamura/neodark.vim'
Plug 'tomasr/molokai'

call plug#end()

" one theme config
"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

"if &term =~# '^screen'
    "let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    "let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
"endif

" Vim 配置
filetype on                                 " 开启文件类型侦测
filetype plugin on                          " 根据侦测到的不同类型加载对应的插件
syntax enable                               " 开启语法高亮功能
"syntax on                                   " 允许用指定语法高亮配色方案替换默认方案
let g:Powerline_colorscheme='solarized256'  " 设置状态栏主题风格

" Vim 配色
set term=screen-256color                    " 兼容tmux
"set term=xterm-256color                       兼容tmux
set background=dark
"colorscheme solarized
colorscheme one
"autocmd vimenter * colorscheme gruvbox
"colorscheme molokai
"colorscheme neodark
"let g:neodark#use_256color = 1 " default: 0"
"let g:neodark#terminal_transparent = 1 " default: 0

"colorscheme material
"set t_Co=256
"let g:airline_theme='one'


" material theme config
" For Neovim 0.1.3 and 0.1.4 - https://github.com/neovim/neovim/pull/2198
if (has('nvim'))
  let $NVIM_TUI_ENABLE_TRUE_COLOR = 1
endif

" For Neovim > 0.1.5 and Vim > patch 7.4.1799 - https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162
" Based on Vim patch 7.4.1770 (`guicolors` option) - https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd
" https://github.com/neovim/neovim/wiki/Following-HEAD#20160511
if (has('termguicolors'))
  set termguicolors
endif

let g:material_terminal_italics = 1
"let g:material_theme_style = 'default' | 'palenight' | 'ocean' | 'lighter' | 'darker'
let g:material_theme_style = 'darker'

" Search
set incsearch                               " 开启实时搜索功能
set ignorecase                              " 搜索时大小写不敏感
set nocompatible                            " 关闭兼容模式
set wildmenu                                " vim 自身命令行模式智能补全

" Tab
set tabstop=4                               " tab替换为4个空格
set shiftwidth=4                            " 设置格式化时制表符占用空格数
set autoindent                              " 自动缩进
set expandtab                               " tab替换为空格
set softtabstop=4                           " 关闭softtabstop 永远不要将空格和tab混合输入

" Fold
set foldmethod=indent                      " 基于缩进或语法进行代码折叠
"set foldmethod=syntax                       "基于缩进或语法进行代码折叠，会导致vim卡顿
set nofoldenable"                           " 启动 vim 时关闭折叠代码

" Support
set laststatus=2                            " 总是显示状态栏
set ruler                                   " 显示光标当前位置
set number                                  " 开启行号显示
set cursorline                              " 高亮显示当前行/列
"set cursorcolumn
set hlsearch                                " 高亮显示搜索结果
set nowrap                                  " 禁止折行
set mouse=a                                 " 打开鼠标
"set gcr=a:block-blinkon0                    " 禁止光标闪烁
set undofile                                " 保存操作记录
set undodir=~/.vim-config/undo_dirs         " 操作记录保存路径
set noswapfile                              " 不生成交换文件
set wrap                                    " 自动换行
" 缩进
set backspace=2                             " 解决插入模式下delete/backspce键失效问题
set noshowmode                              " 参数提示
set clipboard=unnamedplus                   " +寄存器关联到系统剪贴板
"set clipboard=unnamed                      "+寄存器关联到系统剪贴板
set relativenumber                          " 相对行号
let g:echodoc_enable_at_startup = 1

" Return to last edit position when opening files
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 替换函数。参数说明：
" confirm：是否替换前逐一确认
" wholeword：是否整词匹配
" replace：被替换字符串
function! Replace(confirm, wholeword, replace)
    wa
    let flag = ''
    if a:confirm
        let flag .= 'gec'
    else
        let flag .= 'ge'
    endif
    let search = ''
    if a:wholeword
        let search .= '\<' . escape(expand('<cword>'), '/\.*$^~[') . '\>'
    else
        let search .= expand('<cword>')
    endif
    let replace = escape(a:replace, '/\&~')
    execute 'argdo %s/' . search . '/' . replace . '/' . flag . '| update'
endfunction
" 不确认、非整词
nnoremap <Leader>R :call Replace(0, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 不确认、整词
nnoremap <Leader>rw :call Replace(0, 1, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、非整词
nnoremap <Leader>rc :call Replace(1, 0, input('Replace '.expand('<cword>').' with: '))<CR>
" 确认、整词
nnoremap <Leader>rcw :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>
nnoremap <Leader>rwc :call Replace(1, 1, input('Replace '.expand('<cword>').' with: '))<CR>

" 定义快捷键的前缀，即<Leader>
let mapleader=" "

" Map
map         <leader>u	    :UndotreeToggle	<CR>
map         <Leader>e	    :NERDTreeToggle <CR>
map         <Leader>t	    :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
map         <Leader>q	    :q  <CR>
map         <Leader>Q	    :q! <CR>
map         <Leader>y       "+y
map         <Leader>p       "+p
map         <Leader>w       :w  <CR>
map         <Leader>W       :wq <CR>
map         <Leader>g       :Agit <CR>
"map         <C-p>           :LeaderfFunctionAll <CR>
map         <C-p>           :FZF <CR>
map         <F5>            :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
map         <Leader>x       :cclose <CR>
"map         <Leader>-       :sp <CR>
"map         <Leader>|       :vs <CR>
nmap        <Leader>M       %
nnoremap    <Leader>nw      <c-w><c-w>
nnoremap    <Leader>lw      <c-w>l
nnoremap    <Leader>hw      <c-w>h
nnoremap    <Leader>kw      <c-w>k
nnoremap    <Leader>jw      <c-w>j
nnoremap    <Leader>lt      gt
nnoremap    <Leader>ht      gT
noremap <silent><tab>m :tabnew<cr>
noremap <silent><tab>e :tabclose<cr>
noremap <silent><tab>n :tabn<cr>
noremap <silent><tab>p :tabp<cr>
"noremap <silent><leader>t :tabnew<cr>
noremap <silent><leader>g :tabclose<cr>
noremap <silent><leader>1 :tabn 1<cr>
noremap <silent><leader>2 :tabn 2<cr>
noremap <silent><leader>3 :tabn 3<cr>
noremap <silent><leader>4 :tabn 4<cr>
noremap <silent><leader>5 :tabn 5<cr>
noremap <silent><leader>6 :tabn 6<cr>
noremap <silent><leader>7 :tabn 7<cr>
noremap <silent><leader>8 :tabn 8<cr>
noremap <silent><leader>9 :tabn 9<cr>
noremap <silent><leader>0 :tabn 10<cr>
noremap <silent><s-tab> :tabnext<CR>

" leaderf
"let g:Lf_ShortcutF = "<leader>ff"
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>
map     <leader>ff :LeaderfFile<CR>

" true color
if has("termguicolors")
    " fix bug for vim
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum

    " enable true color
    set termguicolors
endif

" universal-ctags
set      tags=./.tags;,.tags " 表示在当前工作目录下搜索tags文件
set      autochdir

" gutentags
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']             " gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
let g:gutentags_ctags_tagfile = '.tags'                                                 " 所生成的数据文件的名称
let g:gutentags_modules = []                                                            " 同时开启 ctags 和 gtags 支持：
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif
let g:gutentags_cache_dir = expand('~/.cache/tags')                                     " 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']                    " 配置 ctags 的参数，老的 Exuberant-ctags 不能有 --extra=+q，注意
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']                         " 如果使用 universal ctags 需要增加下面一行，老的 Exuberant-ctags 不能加下一行
let g:gutentags_auto_add_gtags_cscope = 0                                               " 禁用 gutentags 自动加载 gtags 数据库的行为
"set cscopetag
"set cscopeprg='gtags-cscope'

" ale
let g:ale_sign_error = "\ue009\ue009"
hi! clear SpellBad
hi! clear SpellCap
hi! clear SpellRare
hi! SpellBad gui=undercurl guisp=red
hi! SpellCap gui=undercurl guisp=blue
hi! SpellRare gui=undercurl guisp=magenta

let g:ale_sign_column_always = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
"let g:ale_set_quickfix = 1
"let g:ale_open_list = 1"打开quitfix对话框

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

let g:ale_sign_error = ">>"
let g:ale_sign_warning = "--"
map <F7> ::ALEToggle<CR>

" signify
set updatetime=100

" LeaderF
"let g:gutentags_define_advanced_commands = 1               "debug
"let g:Lf_ShortcutF = '<c-p>'
"let g:Lf_ShortcutB = '<m-n>'
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_Gtagslabel = 'native-pygments'
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }

let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.5
let g:Lf_CacheDirectory = expand('~/.vim/cache')
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 1
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':1, 'BufTag':1}

" taglist
"默认打开Taglist
let Tlist_Sort_Type = "name"    " 按照名称排序
let Tlist_Auto_Open=0
let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1 "在右侧窗口中显示taglist窗口
let Tlist_Compart_Format = 1    " 压缩方式
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer
let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的

" vim-preview
autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<CR>
autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<CR>

" nerdtree
"autocmd vimenter * NERDTree  "自动开启Nerdtree
""let g:NERDTreeWinSize = 25 "设定 NERDTree 视窗大小
""开启/关闭nerdtree快捷键
"map <C-f> :NERDTreeToggle<CR>
""let NERDTreeShowBookmarks=1  " 开启Nerdtree时自动显示Bookmarks
""打开vim时如果没有文件自动打开NERDTree
"autocmd vimenter * if !argc()|NERDTree|endif
""当NERDTree为剩下的唯一窗口时自动关闭
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""设置树的显示图标
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
"let NERDTreeIgnore = ['\.pyc$']  " 过滤所有.pyc文件不显示
""let g:NERDTreeShowLineNumbers=1  " 是否显示行号
"let g:NERDTreeHidden=0     "不显示隐藏文件
""Making it prettier
"let NERDTreeMinimalUI = 1
"let NERDTreeDirArrows = 1

" nerdtree-git-plug
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
"let g:NERDTreeShowIgnoredStatus = 1

" YCM
let g:ycm_global_ycm_extra_conf='~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
set completeopt=menu,menuone

" FZF

" vim-better-whitespace
let g:better_whitespace_enabled=1
let g:strip_whitespace_on_save=1
let g:strip_only_modified_lines=1
let g:strip_whitespace_confirm=0
let g:current_line_whitespace_disabled_soft=1
"autocmd FileType c,cpp EnableStripWhitespaceOnSave

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#fnametruncate = 16
let g:airline#extensions#tabline#fnamecollapse = 2
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_theme='deus'  "可以自定义主题，这里使用 badwolf

" UndoTree
if has("persistent_undo")
    set undodir=$HOME."/.undodir"
    set undofile
endif

" ag search
"let g:ag_working_path_mode="r"     " 从根目录开始搜索，代替pwd

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
			\ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
			\ 'cs,lua,javascript': ['re!\w{2}'],
			\ }
let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1,
			\ "objc":1,
			\ "sh":1,
			\ "zsh":1,
			\ "zimbu":1,
			\ }

" easy-grep
let g:EasyGrepMode = 2     " All:0, Open Buffers:1, TrackExt:2,
let g:EasyGrepCommand = 0  " Use vimgrep:0, grepprg:1
let g:EasyGrepRecursive  = 1 " Recursive searching
let g:EasyGrepIgnoreCase = 1 " not ignorecase:0
let g:EasyGrepFilesToExclude = "*.bak, *~, cscope.*, *.a, *.o, *.pyc, *.bak"

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
" autocmd BufWritePost $MYVIMRC source $MYVIMRC
