" Plugins
call plug#begin()
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes' " Status bar Themes
Plug 'https://github.com/neoclide/coc.nvim' " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" nerdcommenter
Plug 'preservim/nerdcommenter'
" code formatter
Plug 'prettier/vim-prettier', {
	  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug 'dense-analysis/ale'
Plug 'mg979/vim-visual-multi'
" themes
Plug 'sonph/onehalf', {'rtp': 'vim/'}
" vim nevigator
Plug 'christoomey/vim-tmux-navigator'

" preview markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}


call plug#end()


" plugins config

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-i> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nnoremap <C-/> : NERDCommenterComment<CR>

let g:airline_powerline_fonts = 1
let g:ale_fix_on_save = 1
colorscheme onehalfdark
nnoremap <C-p> :Files<CR>

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-pairs
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE

" set coc.nvim autocomplete ket
" TAB
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
" ENTER
" inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"


" air-line
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

" customize
nnoremap <SPACE> <Nop>
let mapleader="\<Space>"
inoremap fg <Esc>

set clipboard=unnamedplus
set termbidi
set number
set cursorline
set termguicolors
set signcolumn=yes
set nowrap
set scrolloff=7
set sidescrolloff=20
set splitbelow
set splitright
set termbidi

set tabstop=4 
set shiftwidth=4
set expandtab
set hidden
set nobackup
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
" change windows size
"nnoremap <C-Up> :resize +2<CR>
"nnoremap <C-Down> :resize -2<CR>
"nnoremap <C-Left> :vertical resize +2<CR>
"nnoremap <C-Right> :vertical resize -2<CR>
" move between tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-Up> :tabfirst<CR>
nnoremap <C-Down> :tablast<CR>

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



