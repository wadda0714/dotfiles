if g:dein#_cache_version !=# 420 || g:dein#_init_runtimepath !=# '/Users/wadahiroka/.config/nvim/dein/repos/github.com/Shougo/dein.vim/,/Users/wadahiroka/.config/nvim,/opt/homebrew/etc/xdg/nvim,/etc/xdg/nvim,/Users/wadahiroka/.local/share/nvim/site,/opt/homebrew/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/opt/homebrew/Cellar/neovim/0.8.3/share/nvim/runtime,/opt/homebrew/Cellar/neovim/0.8.3/lib/nvim,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/opt/homebrew/share/nvim/site/after,/Users/wadahiroka/.local/share/nvim/site/after,/etc/xdg/nvim/after,/opt/homebrew/etc/xdg/nvim/after,/Users/wadahiroka/.config/nvim/after' | throw 'Cache loading error' | endif
let [s:plugins, s:ftplugin] = dein#min#_load_cache_raw(['/Users/wadahiroka/.config/nvim/init.vim', '/Users/wadahiroka/.config/nvim/dein/config/dein.toml'])
if s:plugins->empty() | throw 'Cache loading error' | endif
let g:dein#_plugins = s:plugins
let g:dein#ftplugin = s:ftplugin
let g:dein#_base_path = '/Users/wadahiroka/.config/nvim/dein'
let g:dein#_runtime_path = '/Users/wadahiroka/.config/nvim/dein/.cache/init.vim/.dein'
let g:dein#_cache_path = '/Users/wadahiroka/.config/nvim/dein/.cache/init.vim'
let g:dein#_on_lua_plugins = {}
let &runtimepath = '/Users/wadahiroka/.config/nvim/dein/repos/github.com/Shougo/dein.vim/,/Users/wadahiroka/.config/nvim,/opt/homebrew/etc/xdg/nvim,/etc/xdg/nvim,/Users/wadahiroka/.local/share/nvim/site,/opt/homebrew/share/nvim/site,/usr/local/share/nvim/site,/usr/share/nvim/site,/Users/wadahiroka/.config/nvim/dein/repos/github.com/Shougo/vimproc.vim,/Users/wadahiroka/.config/nvim/dein/repos/github.com/neoclide/coc.nvim_release,/Users/wadahiroka/.config/nvim/dein/.cache/init.vim/.dein,/opt/homebrew/Cellar/neovim/0.8.3/share/nvim/runtime,/Users/wadahiroka/.config/nvim/dein/.cache/init.vim/.dein/after,/opt/homebrew/Cellar/neovim/0.8.3/lib/nvim,/usr/share/nvim/site/after,/usr/local/share/nvim/site/after,/opt/homebrew/share/nvim/site/after,/Users/wadahiroka/.local/share/nvim/site/after,/etc/xdg/nvim/after,/opt/homebrew/etc/xdg/nvim/after,/Users/wadahiroka/.config/nvim/after'
filetype off
  inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm(): "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
  inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
  inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
  function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
  endfunction
  nmap <silent> <space>c <Plug>(coc-definition)
  nmap <silent> <space>y <Plug>(coc-type-definition)
  nmap <silent> <space>i <Plug>(coc-implementation)
  nmap <silent> <space>r <Plug>(coc-references)
  nmap <silent> <C-s> :call coc#rpc#restart()<Enter>
  command! -nargs=0 Format :call CocAction('format')
  nmap <silent> ff :call CocAction('format')<Enter>
  try
      nmap <silent> tj :call CocAction('diagnosticNext')<cr>
      nmap <silent> tk :call CocAction('diagnosticPrevious')<cr>
  endtry
