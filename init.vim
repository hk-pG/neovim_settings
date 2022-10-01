" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd

" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 行のハイライトの色
" highlight CursorLine ctermfg=Blue
" highlight CursorLine ctermbg=Blue
" 現在の行を強調表示（縦）
set cursorcolumn
" 列のハイライトの色
highlight CursorColumn ctermbg=Blue
highlight CursorColumn ctermfg=Yellow
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化(眩しいので無効にしてあります)
" set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2

" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

:tnoremap <Esc> <C-\><C-n>
" autocmd TermOpen * startinsert

" インサートモードでバックスペース有効化
set backspace=2

" command! -nargs=* T split | wincmd j | resize 20 | terminal <args>
" :Tで右半分をターミナルにする
command! -nargs=* T vsplit | wincmd l | terminal

" unlimit undo 
if has("persistent_undo")
  set undodir=~/.vimUndoDir
  set undofile
endif

" start plugin setting ====================================================================================================================================
call plug#begin('~/.config/nvim/plugged')
" install command -> :PlugInstall

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'markonm/traces.vim'
Plug 'machakann/vim-sandwich'
Plug 'tpope/vim-commentary'
Plug 'vim-jp/vimdoc-ja'
Plug 'machakann/vim-highlightedyank'
Plug 'neoclide/coc.nvim'
Plug 'neoclide/coc-lists'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'kdheepak/lazygit.nvim'
Plug 'airblade/vim-gitgutter'
Plug 'honza/vim-snippets'
" Plug 'caenrique/nvim-toggle-terminal'
Plug 'akinsho/toggleterm.nvim'
Plug 'wakatime/vim-wakatime'
Plug 'cespare/vim-toml'
Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'nvim-treesitter/nvim-treesitter'

let g:user_emmet_install_global = 1

" colorscheme plugins
"
Plug 'tomasr/molokai'
Plug 'arcticicestudio/nord-vim'
Plug 'ulwlu/elly.vim'
Plug 'jdkanani/vim-material-theme'
Plug 'jacoborus/tender.vim'
Plug 'sainnhe/gruvbox-material'
Plug 'jonathanfilip/vim-lucius'
Plug 'w0ng/vim-hybrid'
Plug 'tomasiser/vim-code-dark'
Plug 'EdenEast/nightfox.nvim'

" icon plugin


call plug#end()

" start coc.nvim setting ====================================================================================================================================

let split = split(glob("~/.config/nvim/configs/" . "*.vim"))

for file in split
  echo "設定ファイルを読み込んでいます : " . file
  execute 'source' file
endfor

echo "プラグインが機能していない場合は:PlugInstallを実行してみて下さい"
echo "vim-plugがインストールていない場合は↓を参照して下さい"
echo "https://github.com/junegunn/vim-plug"
echo "coc.nvimが機能していない場合は':call coc#util#install()'を実行して下さい"

