call plug#begin('/home/evan/.local/share/nvim/site/plugged')

"Plug 'sainnhe/everforest'
Plug 'sbdchd/neoformat'
Plug 'windwp/nvim-autopairs'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-commentary'
Plug 'rust-lang/rust.vim'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" BEGIN PLUGIN CONFIGS

if has('termguicolors')
    set termguicolors
endif
set background=dark
"let g:everforest_background = 'hard'
"let g:everforest_better_performance = 1
"colorscheme everforest

" airline config
let g:airline_powerline_fonts = 1

" autopairs, nvim-tree config
lua << EOF
require("nvim-autopairs").setup {}

-- nvim-tree setup
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

vim.cmd('nnoremap <space>e :NvimTreeToggle<CR>')

EOF


" END PLUGIN CONFIGS

set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set cc=80                  " set an 80 column border for good coding style
filetype plugin indent on   "allow auto-indenting depending on file type
syntax enable               " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
" set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
" set backupdir=~/.cache/vim " Directory to store backup files.


set mouse=a " set mouse on

" save file with Ctrl+s
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <c-s> <Esc>:Update<CR>

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" use enter for trigger completion
inoremap <silent><expr> <Enter> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" always uses spaces instead of tab characters
set expandtab

" lines to keep cursor vertically centered
set scrolloff=10

" remember cursor location
set viminfo='100,\"2500,:200,%,n~/.cache/.viminfo

" set encoding
set encoding=utf-8
set fileencoding=utf-8

" Character 'limit' line
set colorcolumn=100

" don't continue to format comment tags after enter
set formatoptions-=cro

" more buffers open
set hidden 

" update everything, faster completion
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" auto signcolumn
set signcolumn=auto

" set terminal title to vim
set title
set titlestring=%(%{expand(\"%:~:h\")}%)#%(\ %t%)%(\ %M%)%(\ %)NVIM

