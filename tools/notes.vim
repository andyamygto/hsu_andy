" 寫筆記用的 vim 設定。在 ~/.vimrc 加一行：
"   source ~/path/to/hsu_andy/tools/notes.vim
augroup hsu_notes
  autocmd!
  " 長行自動換行顯示，不在單字中間斷開
  autocmd FileType markdown setlocal wrap linebreak
  " 在區塊裡按 Enter，下一行自動補上 "> "
  autocmd FileType markdown setlocal formatoptions+=ro comments=n:>
  " 插入模式打 ;def 之類的縮寫，會變成區塊開頭。
  " 要結束區塊：在多出來的 "> " 那行按 Ctrl-U 清掉，留一行空白。
  autocmd FileType markdown inoremap <buffer> ;def    > [!def]
  autocmd FileType markdown inoremap <buffer> ;res    > [!result]
  autocmd FileType markdown inoremap <buffer> ;der    > [!derive]-
  autocmd FileType markdown inoremap <buffer> ;par    > [!param]
  autocmd FileType markdown inoremap <buffer> ;warn   > [!warn]
  autocmd FileType markdown inoremap <buffer> ;idea   > [!idea]
  autocmd FileType markdown inoremap <buffer> ;todo   > [!todo]
  autocmd FileType markdown inoremap <buffer> ;ref    > [!ref]
augroup END
