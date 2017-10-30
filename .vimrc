" ============================================================================
" Vim-plug initialization
" Avoid modify this section, unless you are very sure of what you are doing
let vim_plug_just_installed = 0
let vim_plug_path = expand('~/.vim/autoload/plug.vim')
if !filereadable(vim_plug_path)
    echo "Installing Vim-plug..."
    echo ""
    silent !mkdir -p ~/.vim/autoload
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let vim_plug_just_installed = 1
endif

" manually load vim-plug the first time
if vim_plug_just_installed
    :execute 'source '.fnameescape(vim_plug_path)
endif

" Obscure hacks done, you can now modify the rest of the .vimrc as you wish :)

" ============================================================================
call plug#begin('~/.vim/plugged')

" nerdtree文件树
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" 代码块
" 文档
" /Users/Michael/.vim/plugged/vim-snipmate/doc/SnipMate.txt
" tab, forward
" shift tab, backward
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'

" ============================================================================
" python代码提示 jedi-vim
Plug 'https://github.com/davidhalter/jedi-vim.git'
" python 的pep8缩进
Plug 'Vimjas/vim-python-pep8-indent'

" 缩进高亮
Plug 'Yggdroot/indentLine'

" ============================================================================
" markdown插件
" https://github.com/iamcco/markdown-preview.vim
" 实时预览
Plug 'iamcco/markdown-preview.vim'
" markdown语法高亮
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" json格式化
" https://github.com/elzr/vim-json
Plug 'elzr/vim-json'

" Tell vim-plug we finished declaring plugins, so it can load them
call plug#end()


" ============================================================================
" 插件配置
"'Yggdroot/indentLine'
"
" 默认开启
let g:indentLine_enabled = 1
let g:indentLine_char = '¦'
let g:indentLine_color_gui = '#A4E57E

" NERDTree ----------------------------- 

" toggle nerdtree display
map <F3> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>
" don;t show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']


" markdown语法高亮
" https://github.com/plasticboy/vim-markdown
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_new_list_item_indent = 2

" Tagbar ----------------------------- 

" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1

" iamcco/markdown-preview.vim 插件配置
let g:mkdp_path_to_chrome = "google-chrome"
" 设置 chrome 浏览器的路径（或是启动 chrome（或其他现代浏览器）的命令）

let g:mkdp_auto_start = 0
" 设置为 1 可以在打开 markdown 文件的时候自动打开浏览器预览，只在打开
" markdown 文件的时候打开一次

let g:mkdp_auto_open = 0
" 设置为 1 在编辑 markdown 的时候检查预览窗口是否已经打开，否则自动打开预
" 览窗口

let g:mkdp_auto_close = 1
" 在切换 buffer 的时候自动关闭预览窗口，设置为 0 则在切换 buffer 的时候不
" 自动关闭预览窗口

let g:mkdp_refresh_slow = 0
" 设置为 1 则只有在保存文件，或退出插入模式的时候更新预览，默认为 0，实时
" 更新预览

let g:mkdp_command_for_global = 0
" 设置为 1 则所有文件都可以使用 MarkdownPreview 进行预览，默认只有 markdown
" 文件可以使用改命令

" markdownPreview快捷键
nmap <silent> <F8> <Plug>MarkdownPreview
imap <silent> <F8> <Plug>MarkdownPreview
nmap <silent> <F9> <Plug>StopMarkdownPreview
imap <silent> <F9> <Plug>StopMarkdownPreview

"苹果 用户如果使用chrome可以参照以下设置 g:mkdp_path_to_chrome:
let g:mkdp_path_to_chrome = "open -a Google\\ Chrome"
"let g:mkdp_path_to_chrome = "/Applications/Google\\ Chrome.app/Contents/MacOS/Google\\ Chrome"



" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" ============================================================================
" => Colors and Fonts
" ============================================================================
" 字体,字号
set guifont=Monaco:h16
" 主题下载
" https://github.com/encody/nvim
" 将主题文件'monokai.vim' 放在 ~/.vim/colors 目录下
"syntax enable 
colorscheme monokai_soda


" 个人自定义样式
" 80列高亮
set cc=80
" Add a bit extra margin to the left
set foldcolumn=1
" 显示对应的大小中括号
" Show matching brackets when text indicator is over them
set showmatch 
" How many tenths of a second to blink when matching brackets
set mat=2

"Always show current position
set ruler

" tabs and spaces handling
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" Be smart when using tabs ;)
set smarttab

" Search ############################## 
" 搜索相关
" incremental search
" Makes search act like search in modern browsers
set incsearch
" highlighted search results
set hlsearch
" Ignore case when searching
set ignorecase
" When searching try to be smart about cases 
set smartcase
" Disable highlight when <leader><cr> is pressed
" 取消高亮, <cr> 类似回车
map <silent> <leader><space> :noh<cr>
" end Search ############################## 



" syntax highlight on
syntax on

" 基本设置, 行号/相对行号
set number
set relativenumber

" 状态栏 ########################################
" https://stackoverflow.com/questions/5375240/a-more-useful-statusline-in-vim
" 状态栏所占用的行数
set laststatus=2



"用到的颜色
hi User1 guifg=#ffdad8  guibg=#880c0e
hi User2 guifg=#000000  guibg=#F4905C
hi User3 guifg=#292b00  guibg=#f4f597
hi User4 guifg=#112605  guibg=#aefe7B
hi User5 guifg=#051d00  guibg=#7dcc7d
hi User7 guifg=#ffffff  guibg=#880c0e gui=bold
hi User8 guifg=#ffffff  guibg=#5b7fbb
hi User9 guifg=#ffffff  guibg=#810085
hi User0 guifg=#ffffff  guibg=#094afe

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

" 状态栏的样式
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "Rownumber/total (%)
set statusline+=%9*\ col:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.
" end 状态栏 ########################################






set encoding=utf8
" Avoid garbled characters in Chinese language windows OS
" 语言设置
let $LANG='en' 
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" Turn on the WiLd menu
" 下方菜单栏显示选项, tab键可以选取
set wildmenu


" Height of the command bar
set cmdheight=2

" For regular expressions turn magic on
" 正则表达式, magic (\m)：除了 $ . * ^ 之外其他元字符都要加反斜杠。
" nomagic (\M)：除了 $ ^ 之外其他元字符都要加反斜杠。
set magic

" Don't redraw while executing macros (good performance config)
" 针对文件太大, 不会这么卡
set lazyredraw 


" 快捷键
"
" 定义一个复合键 <leader>
let mapleader = ","
let g:mapleader = ","

" ====括号补全====
" 中文输入法会有问题
""inoremap < <><ESC>i
""inoremap ( ()<ESC>i
""inoremap [ []<ESC>i
""inoremap { {}<ESC>i
""inoremap " ""<ESC>i
""inoremap ' ''<ESC>i
"====括号补全====

" MacOS: cmd + [j/k], 整行代码移动
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

" Configure backspace so it acts as it should act
" 退格键设置, vim默认退格不好用
set backspace=eol,start,indent
set whichwrap+=<,>,h,l


" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
" 在visual模式下按* 或 #进行搜索
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
" 空格 定义为 / 查找
map <space> /
map n<space> ?

" delete/change/yank 整个单词
nmap d<space> diw
nmap c<space> ciw
nmap y<space> yiw
nmap v<space> viw

" 删除整行不进入insert状态
nmap dl cc<ESC>
nmap cl cc<ESC>


" 插入状态下, 光标左右移动一个位置
imap <C-h> <ESC>i
imap <C-l> <ESC>lli
imap <C-j> <ESC>jli
imap <C-k> <ESC>kli

" tab键匹配%
nnoremap <tab> %


" 插入一空白行, 不进入insert状态
nmap <C-o> o<ESC>
nmap <C-O> O<ESC>

" 光标移动到下一行开始处, 并处于插入状态
nmap <C-j> <ESC>o
imap <C-j> <ESC>o

" 光标移动到上一行开始处, 并处于插入状态
" nmap <C-k> <ESC>O
imap <C-k> <ESC>O

" Smart way to move between windows
" 窗口之间转跳, 主要是在:vsplit, split下不同的窗口切换
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l



""""""""""""""""""""""
"Quickly Run 一键编译
""""""""""""""""""""""
map <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -o %<"
        exec "!time ./%<"
    elseif &filetype == 'java'
        exec "!javac %"
        exec "!time java %<"
    elseif &filetype == 'sh'
        :!time bash %
    elseif &filetype == 'python'
        "exec "!time python3.5 %"
        exec "!time python %"
    elseif &filetype == 'html'
        exec "!firefox % &"
    elseif &filetype == 'go'
"        exec "!go build %<"
        exec "!time go run %"
    elseif &filetype == 'mkd'
        exec "!~/.vim/markdown.pl % > %.html &"
        exec "!firefox %.html &"
    endif
endfunc

