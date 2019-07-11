" ____    ____  __   _______   _______
" \   \  /   / |  | |       \ |   ____|
"  \   \/   /  |  | |  .--.  ||  |__
"   \      /   |  | |  |  |  ||   __|
"    \    /    |  | |  '--'  ||  |____
"     \__/     |__| |_______/ |_______|
"

autocmd BufNewFile *.lua,*.sh,*.php 0r !~/.vim/template.sh %:e
autocmd BufRead,BufNewFile *.conf setfiletype conf
autocmd BufRead *.php set includeexpr=substitute(v:fname,'\\\','/','g')
autocmd BufRead *.php set include=^#\s*use
autocmd BufRead *.php set suffixesadd+=.php
autocmd BufWinEnter *.volt,*.tp,*.mako set filetype=html
autocmd BufWinEnter *.sls set filetype=yaml
autocmd GUIEnter * silent !wmctrl -r :ACTIVE: -b add,maximized_vert,maximized_horz
autocmd FileType php setlocal commentstring=//\ %s
call system('mkdir -p ~/.vimtmp/undodir ~/.vimtmp/backupdir ~/.vimtmp/directory')
colorscheme torte
filetype on
filetype plugin indent on
filetype plugin on
let g:is_bash=1
let $VIMFILES=$HOME.'/.vim'
let @w = 'x~n'
nmap <c-l> <esc>:noh<cr>
nmap <leader>3 :NERDTreeFind<cr>
nmap <leader>a :set filetype=awk        <CR>
nmap <leader>c :set filetype=css        <CR>
nmap <leader>d :set filetype=htmldjango <CR>
nmap <leader>e :set filetype=sed        <CR>
nmap <leader>g :set filetype=go         <CR>
nmap <leader>h :set filetype=html       <CR>
nmap <leader>j :set filetype=javascript <CR>
nmap <leader>l :set filetype=lua        <CR>
nmap <leader>m :set filetype=markdown   <CR>
nmap <leader>p :set filetype=php        <CR>
nmap <leader>s :set filetype=sh         <CR>
nmap <leader>t :set filetype=txt        <CR>
nmap <leader>v :set filetype=vim        <CR>
nmap <leader>y :set filetype=python     <CR>
set ambiwidth=double
set autoread
set autowriteall
set backup
set bs+=start
set smartindent cindent autoindent
set shiftwidth=4 tabstop=4 smarttab
set clipboard+=unnamed
set complete-=i
set cursorline
set expandtab
set encoding=utf-8 fileencodings=ucs-bom,utf-8,cp936 fileencoding=utf-8
set foldmethod=manual
set hidden hlsearch
set ignorecase smartcase
set noautochdir
set noshowmatch
set nowrapscan
set number
set pastetoggle=<F5>
set path+=./model/,./ctrl/,./lib/,*/templates/,*/static/,..,*/src/main/java/
set printoptions=formfeed:y,header:0,paper:A4,duplex:off,syntax:n
set scrolloff=1
set shell=/bin/bash
set nocompatible
set showcmd                                 " Show cmd in vim-cmdline.
set t_Co=256                                " Make vim look better in putty.
set textwidth=0
set undodir=~/.vimtmp/undodir
            \ directory=~/.vimtmp/directory
            \ backupdir=~/.vimtmp/backupdir
            \ viewdir=~/.vimtmp/view
            \ undofile
set vb t_vb=                                " Turn off bi-sound of vim.
set wildignore+=*.git\\*,*.tgz,*.zip,*.url,*.pyc,*.class
syntax on

" 去掉有关vi一致性模式，避免以前版本的一些bug和局限，解决backspace不能使用的问题
set nocompatible
set backspace=indent,eol,start
set backspace=2

" 启用自动对齐功能，把上一行的对齐格式应用到下一行
set autoindent

" 依据上面的格式，智能的选择对齐方式，对于类似C语言编写很有用处
set smartindent

" vim禁用自动备份
set nobackup
set nowritebackup
set noswapfile

" 用空格代替tab
set expandtab

" 设置显示制表符的空格字符个数,改进tab缩进值，默认为8，现改为4
set tabstop=4

" 统一缩进为4，方便在开启了et后使用退格(backspace)键，每次退格将删除X个空格
set softtabstop=4

" 设定自动缩进为4个字符，程序中自动缩进所使用的空白长度
set shiftwidth=4

" 设置帮助文件为中文(需要安装vimcdoc文档)
set helplang=cn

" 显示匹配的括号
set showmatch

" 文件缩进及tab个数
au FileType html,python,vim,javascript setl shiftwidth=4
au FileType html,python,vim,javascript setl tabstop=4
au FileType java,php setl shiftwidth=4
au FileType java,php setl tabstop=4
" 高亮搜索的字符串
set hlsearch

" 检测文件的类型
filetype on
filetype plugin on
filetype indent on

" C风格缩进
set cindent
set completeopt=longest,menu

" 功能设置

" 去掉输入错误提示声音
set noeb
" 自动保存
set autowrite
" 突出显示当前行
set cursorline
" 突出显示当前列
" set cursorcolumn
"设置光标样式为竖线vertical bar
" Change cursor shape between insert and normal mode in iTerm2.app
"if $TERM_PROGRAM =~ "iTerm"
let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
"endif
" 共享剪贴板
set clipboard+=unnamed
" 文件被改动时自动载入
set autoread
" 顶部底部保持3行距离
set scrolloff=3
" 显示相对行数
set relativenumber

" 当光标一段时间保持不动了，就禁用高亮
 autocmd cursorhold * set nohlsearch
" 当输入查找命令时，再启用高亮
noremap n :set hlsearch<cr>n
noremap N :set hlsearch<cr>N
noremap / :set hlsearch<cr>/
noremap ? :set hlsearch<cr>?
noremap * *:set hlsearch<cr>

" 设置鼠标可区域选择，跟普通的编辑器一样可以进行拖选
set mouse=a

" 解决 mac 上面不能直接复制剪切板的问题
map <C-c> y:e ~/clipsongzboard<CR>P:w<cr>:w !pbcopy<CR><cr>:1,$d<cr>:w<cr><C-o><C-o>


"
" statusline
"
set laststatus=2
set statusline=(Vide)\ \ %<%f
set statusline+=%w%h%m%r
set statusline+=\ %{getcwd()}
set statusline+=\ [%{&ff}:%{&fenc}:%Y]
set statusline+=%=%-14.(%l,%c%V%)\ %p%%

"
" vim-plug
"
call plug#begin('~/.vim/plug')
Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-php-manual'
Plug 'cespare/vim-toml'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'godlygeek/tabular'
Plug 'kien/ctrlp.vim'
Plug 'mzlogin/vim-markdown-toc'
Plug 'plasticboy/vim-markdown'
Plug 'roxma/vim-paste-easy'
Plug 'scrooloose/nerdtree'
Plug 'tmhedberg/matchit'
Plug 'tpope/vim-commentary'
Plug 'vim-syntastic/syntastic'
call plug#end()

let g:vim_markdown_folding_disabled = 1
let g:gitgutter_max_signs=10000

"
" syntastic
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_quiet_messages = { "level": "errors" }
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

"
" go-vim
"
let g:go_version_warning = 0
let g:go_fmt_autosave = 1
let g:go_fmt_command = "goimports"

"
" NERDTree
"
let g:NERDTreeDirArrowExpandable  = '@'
let g:NERDTreeNodeDelimiter       = "\u00a0"
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeShowHidden          = 0
let g:NERDTreeBookmarksFile       = $HOME.'/.vimtmp/NerdBookmarks.txt'
let g:NERDTreeShowBookmarks       = 1
let g:NERDTreeShowFiles           = 1
let g:NERDTreeShowLineNumbers     = 0
let g:NERDTreeWinSize             = 29
let g:NERDTreeMinimalUI           = 1
let g:NERDTreeDirArrows           = 1
let g:NERDTreeIgnore              = [
            \ '.*\.class',
            \ '.*\.pyc',
            \ '.*\.chm',
            \ '.*\.ttf',
            \ '.*\.lnk',
            \ '.*\.cproj',
            \ '.*\.exe',
            \ '.*\.dll',
            \ '.*\.out',
            \ '.*\.files',
            \ '.*\.zip',
            \ '.*\.rar',
            \ '.*\.gif'
            \ ]
let g:NERDTreeIndicatorMapCustom = {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ "Unknown"   : "?"
            \ }

"
" ctrlp
"
" Making CtrlP.vim load 100x faster — A Tiny Piece of Vim — Medm
" https://medium.com/a-tiny-piece-of-vim/making-ctrlp-vim-load-100x-faster-7a722fae7df6#.emcvo89nx
let g:ctrlp_user_command = [
            \ '.git/',
            \ 'git --git-dir=%s/.git ls-files -oc --exclude-standard'
            \ ]
let g:ctrlp_match_window       = 'bottom,order:btt,min:5,max:5,results:10'
let g:ctrlp_cmd                = 'CtrlPMixed'
let g:ctrlp_mruf_default_order = 1

"
" utime.vim
"
let g:timeStampFormat = '170101'
let g:timeStampString = '%y%m%d'
let g:timeStampLeader = 'version'
