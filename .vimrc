"-------------------------------------------------
"vimrcより
"-------------------------------------------------
" 検索の挙動に関する設定:
"
" 検索時に大文字小文字を無視 (noignorecase:無視しない)
set ignorecase
" 大文字小文字の両方が含まれている場合は大文字小文字を区別
set smartcase

"検索時に最後までいった最初に戻る
set wrapscan

"検索文字入力時に順次対象文字列にヒットさせない
set noincsearch

"検索文字列のハイライトを有効にする
set hlsearch

"-------------------------------------------------
" 編集に関する設定:
"tabをスペースに変換
set softtabstop=4
set tabstop=4
set shiftwidth=4
" タブをスペースに展開しない (expandtab:展開する)
set noexpandtab
" 自動的にインデントする (noautoindent:インデントしない)
set autoindent
set cindent
" バックスペースでインデントや改行を削除できるようにする
set backspace=indent,eol,start
" 括弧入力時に対応する括弧を表示 (noshowmatch:表示しない)
set showmatch
" コマンドライン補完するときに強化されたものを使う(参照 :help wildmenu)
set wildmenu
" テキスト挿入中の自動折り返しを日本語に対応させる
set formatoptions+=mM

"--------------------------------------------------
" GUI固有ではない画面表示の設定:
"
" 行番号を非表示 (number:表示)
set number
" ルーラーを表示 (noruler:非表示)
set ruler
" タブや改行を表示 (list:表示)
set nolist
" どの文字でタブや改行を表示するかを設定
"set listchars=tab:>-,extends:<,trail:-,eol:<
" 長い行を折り返して表示 (nowrap:折り返さない)
set wrap
" 常にステータス行を表示 (詳細は:he laststatus)
set laststatus=2
"コマンドラインの高さ (Windows用gvim使用時はgvimrcを編集すること)
set cmdheight=2

" コマンドをステータス行に表示
set showcmd
" タイトルを表示
set title

"------------------------------------------------
" ファイル操作に関する設定:
"
" バックアップファイルを作成しない (次行の先頭の " を削除すれば有効になる)
"set nobackup

"------------------------------------------------
" ファイル名に大文字小文字の区別がないシステム用の設定:
"   (例: DOS/Windows/MacOS)
"
if filereadable($VIM . '/vimrc') && filereadable($VIM . '/ViMrC')
  " tagsファイルの重複防止
  set tags=./tags,tags
endif

"-------------------------------------------------
"分類しにくいもの
"Vi互換にしない
set nocompatible

"yankしたテキストがクリップボードに入るようにする
set clipboard+=unnamed
"-------------------------------------------------
"装飾関連

"シンタックスとかをonにする前によぶべきなようなので
"call rtputil#bundle()
"call rtputil#helptags()

"シンタックスハイライトを有効にする
syntax on
syntax enable

"背景
if has('gui_running')
    set background=light
else
    set background=dark
endif

"256 color
set t_Co=256

"カラースキーム
"colorscheme wombat

"ステータスバー
set statusline=%F%m%r%h%w\ %{'['.(&fenc!=''?&fenc:&enc).']'}\ [%{&ff}]\
                \ [%Y]\ [%l/%L]\ [%p%%]\ %=[HEX=\%02.2B]\ [ASCII=\%03.3b]


"ファイルタイププラグイン
filetype plugin indent on

"タブエディタのための設定
"map <C-n> :tabn <Enter>
"map <C-m> :tabp <Enter>
