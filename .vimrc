

call plug#begin()

" List your plugins here
Plug 'preservim/nerdtree'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'fatih/vim-go'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
Plug 'w0rp/ale'
Plug 'pasky/claude.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-buffer-ops'
Plug 'PhilRunninger/nerdtree-visual-selection'

call plug#end()

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let NERDTreeShowHidden=1

" Create default mappings
let g:NERDCreateDefaultMappings = 1

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

set number

let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python':['black'],
\   'go':['golangci-lint'],
\   'css':['stylelint'],
\}
let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'python':['black'],
\   'go':['golangci-lint'],
\   'css':['stylelint','prettier'],
\}
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1


set tabstop=2      
set shiftwidth=2  
set expandtab     
set softtabstop=2
