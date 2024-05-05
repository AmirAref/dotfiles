" Plugins
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" theme plugins
Plugin 'NLKNguyen/papercolor-theme'

" code analysis
Plugin 'dense-analysis/ale'

" auto complete
Plugin 'neoclide/coc.nvim', {'branch': 'release', 'do':'npm ci'}
Plugin 'yaegassy/coc-ruff', {'do': 'yarn install --frozen-lockfile'}
" install pyright with : CocInstall coc-pyright

" airline status bar
Plugin 'vim-airline/vim-airline'

" nerd tree file manager
Plugin 'preservim/nerdtree'

" Git integration (status bar and commands like Gblame)
Plugin 'tpope/vim-fugitive'
" Add info to sidebar about git
Plugin 'airblade/vim-gitgutter'

" commenter
Plugin 'preservim/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" set t_Co=256   " This is may or may not needed.

" theme config
set background=dark
colorscheme PaperColor

" customize
nnoremap <SPACE> <Nop>
" let mapleader="\<Space>"
let mapleader=","
inoremap fg <Esc>

syntax on
set clipboard=unnamedplus
set number
set hidden
set cursorline
set signcolumn=yes
set nowrap
set scrolloff=7
set sidescrolloff=20
set splitbelow
set splitright

set mouse=a
set tabstop=4 
set shiftwidth=4
set expandtab
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
" cutomize managing
nnoremap <C-b> <C-w>
nmap <leader>tn :set nu!<CR>
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>hs :split<CR>
nnoremap <C-t> :terminal<CR>
" copy and pase global
vmap <leader>y "+y"
nmap <leader>y "+y"
nmap <leader>p "+p"

" cutomize managing
nnoremap <C-b> <C-w>
nmap <leader>tn :set nu!<CR>
nnoremap <leader>vs :vsplit<CR>
nnoremap <leader>hs :split<CR>
nnoremap <C-t> :terminal<CR>

" change windows size
"nnoremap <C-Up> :resize +2<CR>
"nnoremap <C-Down> :resize -2<CR>
"nnoremap <C-Left> :vertical resize +2<CR>
"nnoremap <C-Right> :vertical resize -2<CR>
"
" move between tabs
nnoremap <C-Left> :tabprevious<CR>                                                                            
nnoremap <C-Right> :tabnext<CR>

" move  between panes
"nnoremap <c-up> <C-w><up>
"nnoremap <c-down> <C-w><down>
"nnoremap <c-left> <C-w><left>
"nnoremap <c-right> <C-w><right>

"" Abbreviations
"*****************************************************************************
"" no one is really happy until you have this shortcuts
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

nnoremap <leader>h :set hlsearch!<CR>

vnoremap > >gv
vnoremap < <gv


" ale config
let g:ale_linters = {
\   'python': ['ruff'],
\}

" Optional: Configure ALE to automatically fix issues when you save a Python file.
let g:ale_fixers = {
\   'python': ['ruff'],
\}
let g:ale_python_ruff_use_global = 1
let g:ale_python_ruff_auto_poetry = 1
"let g:ale_python_auto_virtualenv = 1
" let g:ale_fix_on_save = 1

" coc.nvim
" set coc.nvim autocomplete key
" TAB
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
" ENTER
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')
command! -nargs=0 Fix :call CocActionAsync('runCommand', 'ruff.executeAutofix')

" nerd tree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-i> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>


" airline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


" nerd commenter
filetype plugin on
map <leader>c <Plug>NERDCommenterToggle('n', 'Toggle')<Cr>

