" バックアップファイルを作らない
set nobackup
set smartindent
" スワップファイルを作らない
 set noswapfile

" init.vimを保存したら自動反映
autocmd BufWritePost  ~/.config/nvim/init.vim  so ~/.config/nvim/init.vim

"インデント可視化
""set list
""set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" エンコーディング
set encoding=utf-8
scriptencoding utf-8

"jキーを二度押しでESCキー
inoremap <silent> jj <ESC>
inoremap <silent> っj <ESC>

"help日本語化
set helplang=ja

"行番号を表示
set number 

" 挿入モードでバックスペースで削除できるようにする
set backspace=indent,eol,start

" 自動でカッコ等を閉じる
inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>

"棒状カーソル"
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
inoremap <Esc> <Esc>lh

" ヤンクするとクリップボードに保存される
set clipboard+=unnamed

"<LeftMouse>"echo 'Hello, world!'
" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.config/nvim/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  let g:rc_dir    = expand('~/.config/nvim/dein/config')
  let s:toml      = g:rc_dir . '/dein.toml'
  "let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " https://github.com/Shougo/vimproc.vim#install
  " for typescript Quramy/tsuquyomi
  " https://qiita.com/Quramy/items/e0f004695e8bcda7604e
  call dein#add('Shougo/vimproc.vim', {'build' : 'make'})

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  "call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
  "call dein#clear_state()
  " https://github.com/Shougo/dein.vim/issues/254
  " vim-goが動かなくなったらこれを実行する
  " call dein#recache_runtimepath()
endif
" プラグインの追加・削除やtomlファイルの設定を変更した後は
" 適宜 call dein#update や call dein#clear_state を呼んでください。
" そもそもキャッシュしなくて良いならload_state/save_stateを呼ばないようにしてください。

" deinの設定ファイル
"source $HOME/.config/nvim/dein/config/dein_plugin.vim
" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

" if dein#tap('vim-gista')
" 
"   " 実行すべき関数
"   function! s:gista_on_source() abort
"     call gista#client#register('GHE', 'https://github.example.com/api/v3')
"   endfunction
" 
"   " g:dein#name にはプラグイン名が入る
"   execute 'autocmd MyAutoCmd User' 'dein#source#' . g:dein#name
"         \ 'call s:gista_on_source()'
" endif
" let g:gista#github_user = 'wadda0714'
let g:loaded_node_provider = 0
let g:loaded_perl_provider = 0

set expandtab


inoremap <silent> <Esc> <Esc>:call system("fcitx-remote -c")<CR>

"Go to next tab
nmap <C-Tab> :tabnext<CR>

"Go to previous tab
nmap <C-S-Tab> :tabprevious<CR

set nu rnu

if has('nvim') || has('patch-9.0.0185')
  call dein#add('github.com/copilot.vim')
endif

:set showtabline=2
" Ctrl-nでNERDTreeを開く
map <C-n> :NERDTreeToggle<CR>
" 隠しファイルを表示する
let NERDTreeShowHidden = 1

let g:coc_global_extensions = ['coc-rust-analyzer']





