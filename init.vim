set number
set cursorline
set showmatch
set showcmd

set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=4

set hlsearch
set incsearch
set ignorecase
set smartcase

set spelllang+=cjk

"set statusline=%F%m%h%w
"set statusline+=%=
"set statusline+=[ENC=%{&fileencoding}]
"set statusline+=[LOW=%l/%L]
"set laststatus=2

 " 入力モードでのカーソル移動
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
"jjでエスケープ
inoremap <silent> jj <ESC>

set wildmenu " コマンドモードの補完
set history=5000 " 保存するコマンド履歴の数

cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

"vim-plug---------------------------------------
call plug#begin('~/.vim/plugged')

Plug 'mattn/emmet-vim'
"emmetの補完機能
"emmet-vimのスニペット変更
let g:user_emmet_settings = {
\  'variables' : {
\    'lang' : "ja"
\  },
\  'html' : {
\    'indentation' : '  ',
\    'snippets' : {
\      'html:5': "<!DOCTYPE html>\n"
\        ."<html lang=\"${lang}\">\n"
\        ."<head>\n"
\        ."\t<meta charset=\"${charset}\">\n"
\        ."\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n"
\        ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n"
\        ."\t<link rel=\"stylesheet\" href=\"\">\n"
\        ."\t<title></title>\n"
\        ."</head>\n"
\        ."<body>\n\t${child}|\n</body>\n"
\        ."</html>",
\    }
\  }
\}
Plug 'tomasr/molokai'
"syntax
Plug 'bronson/vim-trailing-whitespace'
":FixWhitespace
Plug 'Yggdroot/indentLine'
"インデントの可視化
Plug 'pangloss/vim-javascript'
"JSのインデントとハイライト
"Plug 'scrooloose/nerdtree'
":NERDTreeToggle<CR> o/i/sなどで開く
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"ステータスラインのカスタマイズ
Plug 'tpope/vim-fugitive'
"vimからGit操作
Plug 'tpope/vim-commentary'
"gcc/複数行なら行選択後gc

"補完プラグイン
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
let g:deoplete#enable_at_startup = 1

Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'
Plug 'Shougo/neco-vim'
"Plug 'jiangmiao/auto-pairs'
"()の補完

call plug#end()
"--------------------------------------------------
colorscheme molokai
let g:airline_theme = 'bubblegum'
let g:user_emmet_leader_key='<c-e>' "<C-y> →<C-e>
