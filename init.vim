" see:
" https://www.gregjs.com/vim/2016/neovim-deoplete-jspc-ultisnips-and-tern-a-config-for-kickass-autocompletion/
" https://javascriptplayground.com/blog/2017/01/vim-for-javascript/
"
set tabstop=2     "tab width
set shiftwidth=2  "indent size
set expandtab     "use spaces
set smarttab
set number
set ruler
set splitbelow
set splitright
nnoremap ; :
set encoding=utf-8

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/anton/.config/nvim/dein//repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/anton/.config/nvim/dein/')
  call dein#begin('/home/anton/.config/nvim/dein/')

  " Let dein manage dein
  " Required:
  call dein#add('/home/anton/.config/nvim/dein//repos/github.com/Shougo/dein.vim')
  call dein#add('haya14busa/dein-command.vim')

  " Anton's:
  call dein#add('Shougo/vimshell')
  call dein#add('scrooloose/nerdtree', {'on_cmd': 'NERDTreeToggle'})
  call dein#add('Xuyuanp/nerdtree-git-plugin', {'on_cmd': 'NERDTreeToggle'})

  call dein#add('w0rp/ale')
  call dein#add('editorconfig/editorconfig-vim')

  call dein#add('Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' })
  call dein#add('ervandew/supertab')

  call dein#add('pangloss/vim-javascript')
  call dein#add('mxw/vim-jsx')
  call dein#add('leshill/vim-json')

  call dein#add( 'SirVer/ultisnips')
  call dein#add( 'honza/vim-snippets')
  call dein#add( 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] })
  call dein#add( 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] })
  call dein#add( 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:python_host_prog = '/home/anton/.pyenv/shims/python'
let g:python3_host_prog = '/home/anton/.pyenv/shims/python3'

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS

let g:deoplete#enable_at_startup = 1
let g:deoplete#omni#functions = {}
let g:deoplete#omni#functions.javascript = [
  \ 'tern#Complete',
  \ 'jspc#omni'
\]

set completeopt=longest,menuone,preview
let g:deoplete#sources = {}
let g:deoplete#sources['javascript.jsx'] = ['file', 'ultisnips', 'ternjs']
let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']

autocmd FileType javascript let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:UltiSnipsExpandTrigger="<C-j>"
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

" close the preview window when you're not using it
let g:SuperTabClosePreviewOnPopupClose = 1
" or just disable the preview entirely
set completeopt-=preview

let g:UltiSnipsSnippetsDirectories=['~/.config/nvim/dein/repos/github.com/honza/vim-snippets/UltiSnips', '~/.config/nvim/UltiSnips']
let g:UltiSnipsSnippetsDir='~/.config/nvim/UltiSnips'
