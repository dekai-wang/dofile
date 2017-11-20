"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author :      dekai dekai.wang.c@gmail.com
" Version:      0.1
" Last Change:  2015-09
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 开启高亮
syntax on
syntax enable

" 检测文件类型
filetype on

" 针对文件类型不同缩进格式
filetype indent on

" 允许插件
filetype plugin on

" 启动自动补全
filetype plugin indent on

" vimrc文件修改之后自动载入
"autocmd! bufwritepost .vimrc source %

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8

" 开启256色
set t_Co=256

" 设置缩进
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set autoindent
set smartindent

" 粘贴
" set clipboard=unnamed

" 总是显示状态行
set laststatus=2

" 显示行号 
set number

" 状态栏显示目前所执行的指令
set showcmd

" 高亮括号匹配
set showmatch

" 高亮当前行
set cursorline

" 可视化命令菜单
set wildmenu

" 开启代码折叠
set foldenable
set foldmethod=syntax
set foldlevelstart=10
set foldnestmax=20
nnoremap <space> za

" 文件修改之后自动载入
set autoread

" 自动切换当前目录为当前文件所在的目录  
set autochdir

" 不显示援助索马里儿童的提示
set shortmess=atI

" history储存长度
set history=400

" 备份，防止误删
set backup
set backupext=.bak
set backupdir=~/.vimbackup

" .swp
set noswapfile

set nocompatible

" 退格键兼容 
set backspace=indent,eol,start

let mapleader=";"

" 键盘映射
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

" 补全颜色
hi Pmenu    ctermbg=DarkBlue    ctermbg=white cterm=bold
hi Pmenusel ctermbg=DarkYellow  ctermbg=white cterm=bold

"""" Vundle配置 """" 
" Vundle插件管理
filetype off                 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'a.vim'
Plugin 'rking/ag.vim'
Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'vim-airline/vim-airline'

Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'altercation/vim-colors-solarized'

Plugin 'DoxygenToolkit.vim' 
Plugin 'jiangmiao/auto-pairs'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
call vundle#end()            
filetype plugin indent on 

"""" 插件配置 """" 

" a.vim setting
nmap <leader>fg :A<CR>
nmap <leader>fgg :AS<CR>

"nmap <Leader>ih
"nmap <Leader>is

" sorarized setting
set background=dark
colorscheme solarized
let g:solarized_termcolors=256

" YouCompleteMe setting
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
" let g:ycm_confirm_extra_conf = 0 "自动加载配置 
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_seed_identifiers_with_syntax = 1 "关键字补全
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++'
nnoremap <leader>gd :YcmCompleter GoTo<CR>
nnoremap <F4> :YcmDiags<CR>
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
nnoremap <F2> :YcmGenerateConfig<CR>

" DoxygenToolkit setting
let g:DoxygenToolkit_briefTag_pre = "@brief "
let g:DoxygenToolkit_paramTag_pre = "@param "
let g:DoxygenToolkit_returnTag = "@return "
let g:DoxygenToolkit_authorName = "dekai.wang"
let g:DoxygenToolkit_licenseTag = ""

" ctrlp setting
let g:ctrlp_max_files = 9999
let g:ctrlp_max_depth = 60
let g:ctrlp_swithc_buffer = 0
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_user_command = 'ag %s -l –nocolor –hidden -g ""'

" markdown
let g:vim_markdown_frontmatter=1
let g:vim_markdown_math=1

