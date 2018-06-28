execute pathogen#infect()
filetype plugin indent on

syntax on

" autoclose pairs
let g:AutoClosePairs = "() {} <> | ' \""

" change the mapleader from \ to ,
let mapleader="\<Space>"

" Quickly evit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>lv :so $MYVIMRC<CR>

" Hides buffers, instead of closing them so we can open other files
" without having to close existing one.
set hidden

" Set transparent background
hi Normal ctermbg=none

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
set laststatus=2

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

" Load nerdtree file explorer on-start
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Show hidden files in NERDTree
let NERDTreeShowHidden=1
let NERDTreeDirArrows = 1

nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>

" Map ':' to ';' so to save, I can just do ';w'
noremap ; :

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
nmap <C-Left> <<
nmap <C-Right> >>
vmap <C-Left> <gv
vmap <C-Right> >gv

" Mapping windows re-sizing
map <C-+> <C-w>+
map <C--> <C-w>-

" Mapping next/previous errors
map <C-n> :cnext<CR>
map <C-m> :cprevious<CR>

" Use F5 to list all numbered buffers
:nnoremap <F5> :buffers<CR>:buffer<Space>

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

" Toggle cursorline
autocmd InsertEnter,InsertLeave * set cul!

" Cursorline color
set cursorline
set cursorcolumn
hi CursorLine cterm=NONE ctermbg=darkblue ctermfg=white

" Turn off visual bell
set t_vb=

" Indentation in YAML file
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

" Clear highlight
nnoremap <Leader><space> :noh<cr>

-" Map start and end line in normal mode
noremap <leader>q 0
noremap <leader>p $

+" Synastic doesn't check Go files on save by default (anymore), this restores that behaviour
let g:syntastic_go_checkers = ['go']

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

highlight StatusLineNC cterm=bold ctermfg=white ctermbg=darkgray

" Insert new line in normal mode
nmap <Enter> o<Esc>
