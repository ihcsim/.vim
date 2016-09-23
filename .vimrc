execute pathogen#infect()
syntax on
filetype plugin indent on

colorscheme busybee

" Make sure the 'delete' key works
set backspace=indent,eol,start

" show leader key when pressed
set showcmd

" Replace tabs with spaces, 2 space-width
set tabstop=2 shiftwidth=2 expandtab

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

" Load nerdtree file explorer on-start
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ctrlp settings
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules

" Mapping windows navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Mapping windows re-sizing
map <C-+> <C-w>+
map <C--> <C-w>-

" Mapping next/previous errors
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>

" All go errors go to quickfix error list
let g:go_list_type = "quickfix"

" Run goimports when saving file
let g:go_fmt_command = "goimports"

" Go mappings
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>c <Plug>(go-coverage-toggle)

" Ruby autocomplete
autocmd FileType ruby compiler ruby
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" Remove trailing spaces on-save
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

let g:vim_markdown_folding_disabled = 1
