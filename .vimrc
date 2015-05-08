execute pathogen#infect()
syntax on
filetype plugin indent on

" Tab navigation
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . tabpagenr()<CR>

" Ruby autocomplete
autocmd FileType ruby compiler ruby
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" Replace tabs with spaces, 2 space-width
set tabstop=2 shiftwidth=2 expandtab

" Add full file path to statusline
set statusline+=%F

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
