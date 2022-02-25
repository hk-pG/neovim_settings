" バッファタブ有効化
let g:airline#extensions#tabline#enabled = 1
" テーマ設定
" 
" let g:airline_theme = 'deus'
" let g:airline_theme = 'powerlineish'
" let g:airline_theme = 'luna'
let g:airline_theme='elly'
" 背景色
let g:airline_deus_bg = 'dark'
let g:airline_powerline_fonts = 1

" gitブランチ表示
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

" タブ移動スクリプトを設定
nmap <C-k> <Plug>AirlineSelectPrevTab
nmap <C-j> <Plug>AirlineSelectNextTab

