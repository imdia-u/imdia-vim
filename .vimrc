let mapleader = ","
inoremap jk <esc>
nnoremap ,ev :tabedit $MYVIMRC<cr>
nnoremap ,sv :source $MYVIMRC<cr>
set number
"设置缩进
set tabstop=2
set shiftwidth=2	
	
		
set encoding=utf-8
set nobackup
set noswapfile
syntax enable
syntax on
set incsearch
set hlsearch
set showmatch
nnoremap ,<space> :nohlsearch<cr>  
set linespace=15
set guifont=Menlo:h16 "设置字体
"set guifont=Comic_Sans_MS:h16 "设置字体
set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R


" plugins ===========================
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

Plugin 'scrooloose/nerdcommenter'

Plugin 'mileszs/ack.vim' " 代码搜索
"Plugin 'sheerun/vim-polyglot' " 语言包
"Plugin 'w0rp/ale' " 语法检测引擎
Plugin 'vim-airline/vim-airline' " 状态栏美化
Plugin 'vim-airline/vim-airline-themes' " 状态栏美化主题
Plugin 'mattn/emmet-vim' " emmet
Plugin 'othree/html5.vim'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'ap/vim-css-color'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'


Plugin 'Raimondi/delimitMate' " 插入模式自动补全引号，括弧
"这个最后安装吧
"Plugin 'Valloric/YouCompleteMe' " 代码补全

call vundle#end()
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚>本


"------------------------------------------ plug 
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'



Plug 'leafgarland/typescript-vim' " typescript
Plug 'Valloric/YouCompleteMe' " 代码补全
Plug 'w0rp/ale' " 语法检测引擎
" post install (yarn install | npm install) then load plugin only for editing supported files
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }

" Initialize plugin system
call plug#end()


"ack
let g:ackprg = 'ag --nogroup --nocolor --column'

" linter
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'css': ['stylelint']
\}
let g:ale_fix_on_save = 1
let g:ale_sign_column_always = 0
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '❗️'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" airline-theme
let g:airline_theme='papercolor'
"let g:airline_theme='simple'

" emmet
"let g:user_emmet_leader_key='<Tab>'
let g:user_emmet_leader_key='<C-Z>'
let g:user_emmet_settings={
			\'javascript.jsx': {
			\'extends': 'jsx'
			\},
\}

" css3
augroup VimCSS3Syntax
  autocmd!

  autocmd FileType css setlocal iskeyword+=-
augroup END
" js
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
set foldmethod=syntax
set foldlevelstart=99	"打开文件是默认不折叠代码
let g:javascript_conceal_function             = "ƒ"
"let g:javascript_conceal_null                 = "ø"
"let g:javascript_conceal_this                 = "@"
"let g:javascript_conceal_return               = "⇚"
"let g:javascript_conceal_undefined            = "¿"
"let g:javascript_conceal_NaN                  = "ℕ"
"let g:javascript_conceal_prototype            = "¶"
"let g:javascript_conceal_static               = "•"
"let g:javascript_conceal_super                = "Ω"
"let g:javascript_conceal_arrow_function       = "⇒"
"let g:javascript_conceal_noarg_arrow_function = "🞅"
"let g:javascript_conceal_underscore_arrow_function = "🞅"
"set conceallevel=1

" jsx
let g:jsx_ext_required = 1

" prettier
"nmap <Leader>py <Plug>(Prettier)


" keymap ===========================
nmap ,t :NERDTreeToggle<cr>

" syntax ===========================
au BufWrite,BufNewFile,BufRead *.conf set ft=nginx


" theme ===========================
colorscheme atom-dark
hi foldcolumn guibg=bg
hi LineNr guibg=bg
hi vertsplit guifg=bg guibg=bg


" Abbreviations ===========================
iabbrev @@ tzjvon@foxmail.com


