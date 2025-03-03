""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  PlugList                                  "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

Plug 'Yggdroot/indentLine'

Plug 'jiangmiao/auto-pairs'

Plug 'tell-k/vim-autopep8'

Plug 'kovisoft/slimv'

Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Plug 'easymotion/vim-easymotion'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

"comments-auto
Plug 'scrooloose/nerdcommenter'

"jedi-vim
Plug 'davidhalter/jedi-vim'

" Using a tagged release; wildcard allowed (requires git 1.9.2:r above)

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

"theme color
Plug 'tomasr/molokai' | Plug 'altercation/vim-colors-solarized'

"Fuzzy file, buffer, mru, tag, etc finder.
"Plug 'kien/ctrlp.vim'

"multiple selections
Plug 'terryma/vim-multiple-cursors'

"Highlights trailing whitespace
Plug 'bronson/vim-trailing-whitespace'

"emmet quick-html
Plug 'mattn/emmet-vim'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                              plugin settings                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible

let mapleader=";"

" Initialize plugin system
call plug#end()

filetype plugin indent on

"NerdTree ####
map <C-t> :NERDTreeToggle<CR>


"easymotion
" nmap <Leader> <Plug>(easymotion-prefix)
"n-character search motion
" nmap ss <Plug>(easymotion-s2)
" map  / <Plug>(easymotion-sn)
" omap / <Plug>(easymotion-tn)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
" map  n <Plug>(easymotion-next)
" map  N <Plug>(easymotion-prev)
" hjkl motions
" map <Leader>l <Plug>(easymotion-lineforward)
" map <Leader>j <Plug>(easymotion-j)
" map <Leader>k <Plug>(easymotion-k)
" map <Leader>h <Plug>(easymotion-linebackward)

" let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

"ctrlp ####
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe
"let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'

"jedi-vim
let g:jedi#goto_command = "<leader>s"
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = ""
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"

"ultisnip ####
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"nerdcommenter ####
let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']

"vim-easy-align ####
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"indentLine ####
"let g:indentLine_char='┆'
let g:indentLine_enabled = 0

"autopep8 ####
let g:autopep8_disable_show_diff=1



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               common setting                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"set rtp+=/usr/lib/python3.6/site-packages/powerline/bindings/vim

"colorscheme wombat256mod
colorscheme molokai

set showcmd

set mouse=a
" 指定在选择文本时，光标所在位置也属于被选中的范围。如果指定 selection=exclusive 的话，可能会出现某些文本无法被选中的情况。
set selection=inclusive
set selectmode=mouse,key
set matchtime=5

" 在命令模式下使用 Tab 自动补全的时候，将补全内容使用一个漂亮的单行菜单形式显示出来。
set wildmenu
set background=dark
set t_Co=256
set number

set scrolloff=5        "距离顶部和底部5行"
set laststatus=2    "命令行为两行"
set cursorline        "突出显示当前行"
"set cursorcolumn       "突出显示当前列"
set noexpandtab        "不允许扩展table"
set scrolloff=5        "距离顶部和底部5行"
set laststatus=2    "命令行为两行"
set fileformat=unix    "设置以unix的格式保存文件"
set cindent        "设置C样式的缩进格式"

set autoindent
set smartindent
set showmatch
set ignorecase

set cursorline

set incsearch

set display+=lastline

set guifont=Inconsolata:h15:cANSI

set tabstop=4
set shiftwidth=4
set expandtab

set nobackup
set noswapfile
set noundofile
set history=1024
set autochdir
set whichwrap=b,s,<,>,[,]
set nobomb
set backspace=indent,eol,start whichwrap+=<,>,[,]

" set clipboard+=unnamedplus

set winaltkeys=no

set ruler  " show the cursor position all the time

set showcmd " display incomplete commands

set cmdheight=1 " 1 screen lines to use for the command-line

set showfulltag " show tag with function protype.

set guioptions+=b " present the bottom scrollbar when the longest visible line exceed the window

set fileencodings=utf-8,gbk2312,gbk,gb18030,cp936,shift-jis,sjis,default

set encoding=utf-8

set tenc=utf-8

set langmenu=zh_CN

let $LANG = 'en_US.UTF-8'

syntax on

syntax enable

set autoread

set hlsearch


 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               keyboard-binding                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 inoremap <C-BS> <Esc>bdei
 nnoremap <C-left> :bn<CR>
 nnoremap <C-right> :bp<CR>

 nnoremap <leader>a ^
 vnoremap <leader>a ^ inoremap <leader>a ^
 nnoremap <leader>n $
 vnoremap <leader>n $ inoremap <leader>n $

 nmap <leader>tn :tabnew<cr>
 nmap <leader>tc :tabclose<cr>
 nmap <leader>th :tabp<cr>
 nmap <leader>tl :tabn<cr>

 " 复制与粘贴
 " Ctrl + C 复制
 vnoremap <C-c> "+y
 " 用p替代
 "vnoremap <C-S-v> c<ESC>"+p
 "inoremap <C-S-v> <C-r><C-o>+
 "nnoremap <C-S-v> "+p

 " 移动分割窗口 nmap <c-j> <c-w>j
 nmap <c-k> <c-w>k
 nmap <c-h> <c-w>h
 nmap <c-l> <c-w>l

 " 正常模式下 alt+j,k,h,l 调整分割窗口大小
 nnoremap <M-j> :res +5<cr>
 nnoremap <M-k> :resize -5<cr>
 nnoremap <M-h> :vert res -5<cr>
 nnoremap <M-l> :vertical resize +5<cr>

 " 插入模式移动光标 alt + 方向键
 inoremap <M-j> <Down>
 inoremap <M-k> <Up>
 inoremap <M-h> <left>
 inoremap <M-l> <Right>

 " Don't use Ex mode, use Q for formatting
 noremap Q gq

 " trailling whitespace
 nnoremap <leader>d :%s/\s\+$//<cr>:let @/=''<CR>


 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "                         terminal-keyboard bindings                         "
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

tnoremap <Esc> <C-\><C-n>

" tnoremap <A-h> <C-\><C-N><C-w>h
" tnoremap <A-j> <C-\><C-N><C-w>j
" tnoremap <A-k> <C-\><C-N><C-w>k
" tnoremap <A-l> <C-\><C-N><C-w>l
" inoremap <A-h> <C-\><C-N><C-w>h
" inoremap <A-j> <C-\><C-N><C-w>j
" inoremap <A-k> <C-\><C-N><C-w>k
" inoremap <A-l> <C-\><C-N><C-w>l
" nnoremap <A-h> <C-w>h
" nnoremap <A-j> <C-w>j
" nnoremap <A-k> <C-w>k


 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 "                                   others                                   "
 """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

 " Put these in an autocmd group, so that we can delete them easily.

 augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Enable spellchecking for Markdown
  autocmd FileType markdown setlocal spell

  " Automatically wrap at 80 characters for Markdown
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80

  " Disable wrap on some languages
  autocmd BufRead,BufNewFile *.slim setlocal textwidth=0
  autocmd BufRead,BufNewFile *.erb setlocal textwidth=0
  autocmd BufRead,BufNewFile *.html setlocal textwidth=0

  " Automatically wrap at 72 characters and spell check git commit messages
  autocmd FileType gitcommit setlocal textwidth=72
  autocmd FileType gitcommit setlocal spell

  " Allow stylesheets to autocomplete hyphenated words
  autocmd FileType css,scss,sass setlocal iskeyword+=-

  " Autocomplete ids and classes in CSS
  autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
  " Add the '-' as a keyword in erb files
  autocmd FileType eruby set iskeyword=@,48-57,_,192-255,$,-

  " Auto reload VIM when settings changed
  " autocmd BufWritePost .vimrc so $MYVIMRC
  " autocmd BufWritePost *.vim so $MYVIMRC
  " autocmd BufWritePost vimrc.symlink so $MYVIMRC

  " Make those debugger statements painfully obvious
  au BufEnter *.rb syn match error contained "\<binding.pry\>"
  au BufEnter *.rb syn match error contained "\<debugger\>"
  au BufEnter *.js syn match error contained "\<debugger\>"
  au BufEnter *.coffee syn match error contained "\<debugger\>"
augroup END


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               i & r color setting                          "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! InitColor()
  hi MatchParen cterm=bold ctermbg=none ctermfg=208
  " hi LineNr ctermfg=darkgrey
  " hi LineNr ctermbg=black
  " hi CursorLineNr ctermfg=lightblue
endfunction

function! InsertStatuslineColor(mode)
  if a:mode == 'i'
    hi statusline ctermbg=red
    set cursorline
  elseif a:mode == 'r'
    hi statusline ctermbg=blue
  else
    hi statusline ctermbg=magenta
  endif
endfunction

function! InsertLeaveActions()
  hi statusline ctermbg=green
  set nocursorline
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * call InsertLeaveActions()
au BufEnter * call InitColor()

"status line
if has("statusline")
 set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P
endif

function Result_of_run(run_sign)
    "!ls这样运行, 显示的结果会切换到shell界面
    echo system(a:run_sign . shellescape(expand('%')))
endfunction

autocmd BufNewFile,BufRead *.py nnoremap <buffer> <F2> :up<CR>:call Result_of_run("python ")<CR>
autocmd BufNewFile,BufRead *.go nnoremap <buffer> <F2> :up<CR>:call Result_of_run("go run ")<CR>
autocmd BufNewFile,BufRead *.rb nnoremap <buffer> <F2> :up<CR>:call Result_of_run("ruby ")<CR>
