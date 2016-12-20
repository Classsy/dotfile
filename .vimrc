filetype plugin indent on
""if filetype plugin indent on setting
""create .vim/filetype.vim
""augroup filetypedetect
""    au BufRead,BufNewFile *.yml setfiletype yaml
""augroup END
""
""create ftplugin
""mkdir ./vim/ftplugin
""vi .vim/ftplugin/yaml.vim
""set expandtab
""set tabstop=2
""set softtabstop=2
""set shiftwidth=2


set number
set ignorecase
set smartcase
set incsearch
set hlsearch
set hidden
set backspace=indent,eol,start
set nobackup
set noswapfile
set nowritebackup
set wrap "折り返し
set textwidth=0
set colorcolumn=80
set laststatus=2
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

nnoremap j gj
nnoremap k gk

nmap <silent> <Esc><Esc> :nohlsearch<CR>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/root/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/root/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('Shougo/neocomplete')
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neomru.vim')


call dein#add('davidhalter/jedi-vim')
call dein#add('andviro/flake8-vim')
call dein#add('hynek/vim-python-pep8-indent')

""filer
call dein#add('Shougo/vimfiler')

""surround
call dein#add('tpope/vim-surround')

""unite
call dein#add('Shougo/unite.vim')

"state bar"
call dein#add('itchyny/lightline.vim')

""

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"conf molokai plugins
syntax on
colorscheme molokai

let g:molokai_original = 1
let g:rehash256 = 1

"conf vimfiler plugins
let g:vimfiler_as_default_explorer = 1

"conf neocomplete
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1

"conf unite
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200
nnoremap <silent> ,uy :<C-u>Unite history/yank<CR>
nnoremap <silent> ,ub :<C-u>Unite buffer<CR>
nnoremap <silent> ,uf :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
nnoremap <silent> ,ur :<C-u>Unite -buffer-name=register register<CR>
nnoremap <silent> ,uu :<C-u>Unite file_mru buffer<CR>

"conf neosnippet
" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif
