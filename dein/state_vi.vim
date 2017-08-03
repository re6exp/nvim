if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/home/anton/.config/nvim/init.vim'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/home/anton/.config/nvim/dein'
let g:dein#_runtime_path = '/home/anton/.config/nvim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/home/anton/.config/nvim/dein/.cache/init.vim'
let &runtimepath = '/home/anton/.config/nvim,/etc/xdg/nvim,/home/anton/.local/share/nvim/site,/usr/share/gnome/nvim/site,/usr/local/share/nvim/site,/home/anton/.config/nvim/dein//repos/github.com/Shougo/dein.vim,/home/anton/.config/nvim/dein/.cache/init.vim/.dein,/usr/share/nvim/site,/usr/share/nvim/runtime,/home/anton/.config/nvim/dein/.cache/init.vim/.dein/after,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/usr/share/gnome/nvim/site/after,/home/anton/.local/share/nvim/site/after,/etc/xdg/nvim/after,/home/anton/.config/nvim/after'
filetype off
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* NERDTreeToggle call dein#autoload#_on_cmd('NERDTreeToggle', 'nerdtree-git-plugin', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
silent! command -complete=customlist,dein#autoload#_dummy_complete -bang -bar -range -nargs=* NERDTreeToggle call dein#autoload#_on_cmd('NERDTreeToggle', 'nerdtree', <q-args>,  expand('<bang>'), expand('<line1>'), expand('<line2>'))
