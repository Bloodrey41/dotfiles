" 
" EDITOR CONFIG
"
syntax enable
set updatetime=100
set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=4
set relativenumber
set laststatus=2
set noshowmode
set termguicolors

" 
" PLUGINS
"
call plug#begin('~/.vim/plugged')

" themes
Plug 'morhetz/gruvbox'
Plug 'folke/tokyonight.nvim'

" ide
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'ryanoasis/vim-devicons'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'aquach/vim-http-client'

" support
Plug 'mustache/vim-mustache-handlebars'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'rust-lang/rust.vim'
Plug 'ap/vim-css-color'
Plug 'chrisbra/csv.vim'
Plug 'prisma/vim-prisma'

" navigation
Plug 'scrooloose/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'christoomey/vim-tmux-navigator'
Plug 'easymotion/vim-easymotion'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" typing
Plug 'alvan/vim-closetag'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'

" git
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" lightline
Plug 'itchyny/lightline.vim'

call plug#end()

let mapleader = ' '

" 
" THEMES
" 
"let g:gruvbox_contrast_dark='hard'
colorscheme tokyonight

"Uncomment the following 3 lines for transparent background
"highlight Normal ctermbg=NONE guibg=NONE
"highlight LineNr ctermbg=NONE guibg=NONE
"highlight SignColumn ctermbg=NONE guibg=NONE

" 
" LIGHTLINE
"
let g:lightline = {
	    \ 'active': {
	    \	'left': [['filetype', 'mode', 'paste'], ['relativepath', 'modified'], ['fileformat']],
	    \	'right': [['percent', 'lineinfo'], ['gitbranch']]
	    \ }, 
	    \ 'component_function': {
	    \	'gitbranch': 'FugitiveHead',
	    \	'filetype': 'FileTypeIcon',
	    \	'fileformat': 'EnvIcon'
	    \ },
	    \ 'subseparator': {
	    \	'left': '',
	    \	'right': 'in'
	    \ },
	    \ 'colorscheme': 'tokyonight'
	    \}

" 
" DEVICONS
" 
function! FileTypeIcon()
    return winwidth(0) > 70 ? WebDevIconsGetFileTypeSymbol() : ''
endfunction

function! EnvIcon()
    return winwidth(0) > 70 ? WebDevIconsGetFileFormatSymbol() : ''
endfunction

" 
" NERDTREE
" 
nmap <Leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

"
" FZF
"
nmap <Leader>ff :Files<CR>
nmap <Leader>fh :History<CR>
nmap <Leader>fa :Ag<CR>

" 
" EASYMOTION
" 
nmap <Leader>s <Plug>(easymotion-s2)

" 
" KEYBINDINGS
"

" editor
nmap <Leader>w :w!<CR>
nmap <Leader>q :q<CR>
nmap <Leader>vs :vsplit<CR>

" coc
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gR <Plug>(coc-rename)
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
	    \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" git
nmap <Leader>gf :diffget //2<CR>
nmap <Leader>gj :diffget //3<CR>
nmap <Leader>gs :G<CR>

nmap <Leader>gc :Git commit<CR>
nmap <Leader>gm :Git pull<CR>
nmap <Leader>gp :Git push<CR>
nmap <Leader>gt :SignifyToggleHighlight<CR>
