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
" Macvim
set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guifont=Menlo:h16	"设置字体
set showmatch         	" 高亮显示对应的括号
nnoremap ,<space> :nohlsearch<cr>


set nocompatible	" 去除VI一致性
filetype plugin on
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'file:///home/gmarik/path/to/plugin'j
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'mileszs/ack.vim' " 代码搜索

Plugin 'scrooloose/nerdcommenter'
" Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚>本


nmap ,t :NERDTreeToggle<cr>

au BufWrite,BufNewFile,BufRead *.conf set ft=nginx
