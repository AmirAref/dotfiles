" Plugs
call plug#begin()
" nerdtree
Plug 'preservim/nerdtree'
" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" nerdcommenter
Plug 'preservim/nerdcommenter'
" auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jiangmiao/auto-pairs'
" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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

" plugs configs
let g:ale_fix_on_save = 1
colorscheme onehalfdark
map <C-i> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>
let g:airline_powerline_fonts = 1
nnoremap <C-/> : NERDCommenterComment<CR>
":CocInstall coc-json coc-tsserver
":CocInstall coc-pyright

" customize
nnoremap <SPACE> <Nop>
let mapleader="\<Space>"
inoremap fg <Esc>
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
" coc.nvim
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
nnoremap <C-Up> :resize +2<CR>
nnoremap <C-Down> :resize -2<CR>
nnoremap <C-Left> :vertical resize +2<CR>
nnoremap <C-Right> :vertical resize -2<CR>

nnoremap <leader>h :set hlsearch!<CR>

vnoremap > >gv
vnoremap < <gv



