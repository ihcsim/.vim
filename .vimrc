execute pathogen#infect()
syntax enable
filetype plugin indent on

set ballooneval
set balloonevalterm
set mouse=a
set ttymouse=sgr

" use 256 color
set t_Co=256

" autoclose pairs
let g:AutoClosePairs = "{}"

" change the mapleader from \ to ,
let mapleader="\<Space>"

" Quickly evit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>lv :so $MYVIMRC<CR>

" Hides buffers, instead of closing them so we can open other files
" without having to close existing one.
set hidden

" Make sure the 'delete' key works
set backspace=indent,eol,start

" Show leader key when pressed
set showcmd

" Copy the previous indent on auto-indent
set copyindent

" Number of spaces to use for auto-indenting
set shiftwidth=2

" Use multiple of shiftwidth when indenting with '<' and '>'
set shiftround

" Replace tabs with spaces, 2 space-width
set tabstop=2
set softtabstop=2
set expandtab

" set show matching parenthesis
set showmatch

" Make statusline visible
set laststatus=0

" Highlight search
set hlsearch

" Enable incremental search as string is entered
set incsearch

" Set line number
set nu

" Case-insensitive search
set ignorecase
set smartcase

" Map paste mode to F2 key
set pastetoggle=<F2>

" Enable def/end block matching
runtime macros/matchit.vim

" Change the terminal's title
set title

" Don't beep
set visualbell
set noerrorbells

" Run RustFmt on-save
let g:rustfmt_autosave = 1

" Show hidden files in NERDTree
let NERDTreeShowHidden=1
let NERDTreeDirArrows = 1

nnoremap <Leader>f :NERDTreeToggle<CR>
nnoremap <silent> <Leader>g :NERDTreeFind<CR>

" Map ':' to ';' so to save typing, I can just do ';w'
noremap ; :

" Toggle tagbar
nmap <Leader>d :TagbarToggle<CR>

" ctrlp settings
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_switch_buffer = 'et'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules

" Mapping windows navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Move arrow keys to move text in normal and visual mode
nmap <Alt-Left> <<
nmap <Alt-Right> >>
vmap <Alt-Left> <gv
vmap <Alt-Right> >gv

" Mapping windows re-sizing
map <C-+> <C-w>+
map <C--> <C-w>-

" Mapping next/previous errors
map <C-n> :cnext<CR>
map <C-b> :cprevious<CR>
nnoremap <leader>a :cclose<CR>

" Use F5 to list all numbered buffers
:nnoremap <F5> :buffers<CR>:buffer<Space>

set autowrite

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" All go errors go to quickfix error list to avoid conflicts with syntastic
let g:go_list_type = "quickfix"

" Run goimports when saving file
let g:go_fmt_command = "goimports"

" Indentation in YAML file
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Go mappings
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <leader>r <Plug>(go-run)
autocmd FileType go nmap <leader>t <Plug>(go-test)
autocmd FileType go nmap <leader>c <Plug>(go-coverage-toggle)

" Remove trailing spaces on-save
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

let g:vim_markdown_folding_disabled = 1

" Toggle cursorline
autocmd InsertEnter,InsertLeave * set cul!

" Cursorline color
set cursorline
set cursorcolumn
hi CursorLine cterm=NONE ctermbg=lightyellow ctermfg=black

" Turn off visual bell
set t_vb=

" Clear highlight
nnoremap <leader><space> :noh<cr>

" Map start and end line in normal mode
noremap <leader>q 0
noremap <leader>p $

" Go to tab by number
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

highlight Search cterm=NONE ctermfg=black ctermbg=yellow

" Copy and paste to system clipboard
noremap <leader>c "*y
noremap <leader>v "*p

" Syntastic configuration
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_loc_list_height = 5

" Syntastic mappings
noremap <leader>i :SyntasticInfo<cr>
noremap <leader>c :SyntasticCheck<cr>
noremap <leader>r :SyntasticReset<cr>
noremap <leader>t :SyntasticToggleMode<cr>
noremap <leader>e :Errors<cr>

" Mapping next/previous errors in location list
map <leader>n :lnext<cr>
map <leader>m :lprevious<cr>
map <leader>q :lclose<cr>

" NERDCommenter's default mappings
let g:NERDCreateDefaultMappings = 1
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
