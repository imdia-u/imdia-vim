let mapleader = ","
inoremap jk <esc>
nnoremap ,ev :tabedit $MYVIMRC<cr>
nnoremap ,sv :source $MYVIMRC<cr>
set number
set tabstop=4
set encoding=utf-8
set nobackup  		" 禁止生成临时文件
set noswapfile
syntax enable
syntax on
set incsearch 			"搜素高亮,搜索逐渐高亮
set hlsearch
set showmatch         	" 高亮显示对应的括号
nnoremap ,<space> :nohlsearch<cr>  


set nocompatible              " be iMproved, required
filetype off                  " required
filetype on
filetype plugin on
set rtp+=~/.vim/bundle/Vundle.vim
" set rtp+=~/.vim/vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'  			"快速给单词添加 单引号，双引号，中括号等
Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'file:///home/gmarik/path/to/plugin'j
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

Plugin 'scrooloose/nerdcommenter'       " 添加注释
Plugin 'scrooloose/nerdtree' 			"目录管理

call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚>本


nmap ,t :NERDTreeToggle<cr>

au BufWrite,BufNewFile,BufRead *.conf set ft=nginx
