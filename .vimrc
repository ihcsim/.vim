execute pathogen#infect()
syntax on
filetype plugin indent on

" Ruby autocomplete
autocmd FileType ruby compiler ruby
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" Replace tabs with spaces, 2 space-width
set tabstop=2 shiftwidth=2 expandtab

" Show Syntastic warnings at status line
set statusline+=%F
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Make statusline visible
set laststatus=2

" Highlight search
set hlsearch

" Enable incremental search as string is entered
set incsearch

" Set line number
set nu

" Set case insensitvity
set ignorecase
set smartcase

" Enable def/end block matching
runtime macros/matchit.vim

" Mapping windows navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Mapping windows re-sizing
map <C-+> <C-w>+
map <C--> <C-w>-

let g:vim_markdown_folding_disabled = 1
