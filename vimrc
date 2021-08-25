"==================================================
"
"                          _                    
"  _ __ ___  _   _  __   _(_)_ __ ___  _ __ ___ 
" | '_ ` _ \| | | | \ \ / / | '_ ` _ \| '__/ __|
" | | | | | | |_| |  \ V /| | | | | | | | | (__ 
" |_| |_| |_|\__, |   \_/ |_|_| |_| |_|_|  \___|
"            |___/       
"
"==================================================


"==
"==
"== Base config
"==
"==

" 显示行号
set number
set rnu

" 语法高亮
syntax on

" 显示当前模式
set showmode

" 显示当前命令
set showcmd

" 支持鼠标
set mouse=a

" 启用 256 色
set t_Co=256

" 使用基于GUI的颜色
set termguicolors

" tab 键长度
set tabstop=4

" 高亮光标所在行
set cursorline

" 行宽
set textwidth=90

" 自动折行
set wrap

" 不在单词内折行
set linebreak

" 显示状态栏
set laststatus=2

" 状态栏显示当前光标位置
set ruler

" 光标遇到括号自动匹配另一半
set showmatch

" 搜索时高亮显示匹配结果
set hlsearch

" 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set incsearch

" 搜索忽略大小写
set ignorecase

" 新窗口在当前窗口下方
set splitbelow

" tab 键命令补全
set wildmenu
set wildmode=longest:list,full

" 文件类型检测
filetype on

" 根据不同文件类型加载不同插件
filetype plugin on

" 键位
nnoremap <C-h> <C-w>h  
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let mapleader=";"





"==
"==
"== vim-plug
"==
"==

call plug#begin('~/.vim/plugged/')

" 主题
Plug 'dracula/vim', { 'as': 'dracula' }

" 开始页面
Plug 'mhinz/vim-startify'

" 目录树
Plug 'preservim/nerdtree'

" NERDTree 显示 git 状态
Plug 'Xuyuanp/nerdtree-git-plugin'

" 图标
Plug 'ryanoasis/vim-devicons'

" 自动补全
Plug 'neoclide/coc.nvim', { 'branch': 'release' }

" 可视化缩进
Plug 'Yggdroot/indentLine'

" 彩虹括号
Plug 'luochen1990/rainbow'

" tagbar
Plug 'majutsushi/tagbar'

" 底部状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'iamcco/markdown-preview.vim'

" git
Plug 'airblade/vim-gitgutter'

" Goyo
Plug 'junegunn/goyo.vim'

" vimwiki
Plug 'vimwiki/vimwiki'

" snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" colorrizer
Plug 'lilydjwg/colorizer'

" ctrlp
Plug 'ctrlpvim/ctrlp.vim'

call plug#end()





"==
"==
"== vim Theme
"==
"==

colorscheme dracula





"==
"==
"== NERDTree config
"==
"==

" 当 Vim 以目录参数开头时,启动 NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" 如果 NERDTree 是剩下的唯一窗口,退出 Vim
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" 显示隐藏文件
let NERDTreeShowHidden=1





"==
"==
"== NERDTree-git-plugin config
"==
"==

let g:NERDTreeGitStatusIndicatorMapCustom = {
						\ 'Modified'  :'✹',
						\ 'Staged'    :'✚',
						\ 'Untracked' :'✭',
						\ 'Renamed'   :'➜',
						\ 'Unmerged'  :'═',
						\ 'Deleted'   :'✖',
						\ 'Dirty'     :'✗',
						\ 'Ignored'   :'☒',
						\ 'Clean'     :'✔︎',
						\ 'Unknown'   :'?',
						\ }
let g:NERDTreeGitStatusShowClean = 1
let g:NERDTreeGitStatusConcealBrackets = 1





"==
"==
"== vim-devicons 
"==
"==

set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font\ 11



"==
"==
"== coc 自动补全
"==
"==

let g:coc_global_extensions = [
						\ 'coc-clangd', 
						\ 'coc-cmake', 
						\ 'coc-emmet',
						\ 'coc-git', 
						\ 'coc-highlight', 
						\ 'coc-json',
						\ 'coc-pyright', 
						\ 'coc-sh', 
						\ 'coc-yaml', 
						\ 'coc-css', 
						\ 'coc-html', 
						\ 'coc-htmlhint', 
						\ 'coc-html-css-support', 
						\ 'coc-java', 
						\ 'coc-rome', 
						\ 'coc-sql', 
						\ 'coc-svg', 
						\ 'coc-vimlsp', 
						\ 'coc-xml',
						\ 'coc-markdownlint',
						\ 'coc-tsserver',
						\ 'coc-translator'
						\]





"==
"==
"== indentLine 可视化缩进
"==
"==

let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '·'
let g:indentLine_setConceal = 0  "保留 conceallevel 的设定(为0)




"==
"==
"== rainbow config
"==
"==

let g:rainbow_active = 1
let g:rainbow_conf = {
	\   'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
	\   'ctermfgs': ['lightyellow', 'lightcyan','lightblue', 'lightmagenta'],
	\   'operators': '_,_',
	\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
	\   'separately': {
	\       '*': {},
	\       'tex': {
	\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
	\       },
	\       'lisp': {
	\           'guifgs': ['darkorange3', 'seagreen3', 'royalblue3', 'firebrick'],
	\       },
	\       'vim': {
	\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
	\       },
	\       'html': {
	\           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
	\       },
	\       'css': 0,
	\   }
	\}





"==
"==
"== tagbar config
"==
"==

let g:tagbar_width = 40    " tagbar 宽度





"==
"==
"== airline config
"==
"==

set laststatus=2  									"永远显示状态栏
let g:airline_powerline_fonts = 1  					" 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1 		" 显示窗口tab和buffer
let g:airline#extensions#whitespace#enabled = 0     " 关闭空白格检查
 
"切换Buffer快捷键
nnoremap <C-N> :bn<CR>

let g:airline_theme='dracula'






"==
"==
"== Markdown
"==
"==

let g:vim_markdown_toc_autofit = 1           		" 尽可能减小 TOC 窗口尺寸
set conceallevel=0 
"let g:vim_markdown_conceal = 0               		" 语法隐藏
let g:tex_conceal = ""
let g:vim_markdown_math = 1                  		" 禁用数学隐藏
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_strikethrough = 1         		" 删除线
let g:vim_markdown_no_extensions_in_markdown = 1	" 直接打开链接的 md 文档
let g:vim_markdown_autowrite = 1

" TOC
let g:vmt_auto_update_on_save = 1					" 自动更新已经存在的 TOC
let g:vmt_cycle_list_item_markers = 1				" list 前的符号根据级别循环使用 *、- 和 +

" 实时预览
    " MarkdownPreview
    " 在打开 markdown 文件后，使用该命令可以打开预览窗口

    " MarkdownPreviewStop
    " 关闭 markdown 预览窗口，并停止开启的服务进程
let g:mkdp_path_to_chrome = "/usr/bin/firefox"
let g:mkdp_auto_open = 1							" 编辑 md 时自动打开预览
let g:mkdp_refresh_slow = 0							" 实时预览





"==
"==
"== vimwiki
"==
"==

let g:vimwiki_list = [{'path': '~/wiki/',
					\  'syntax': 'markdown', 
					\  'ext': '.md'}]
