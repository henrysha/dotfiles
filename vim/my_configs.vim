set number
set nofoldenable

map <leader>e :tabedit ~/dotfiles/vim/my_configs.vim<cr>
map <leader>C :CtrlPClearCache<cr>

map ∆ <M-j>
map ˚ <M-k>

map <leader>st :vertical :term<cr>
map <leader>t :term<cr>

" relative path (src/foo.txt)
nnoremap <leader>cf :let @+=expand("%")<CR>

" absolute path (/something/src/foo.txt)
nnoremap <leader>cF :let @+=expand("%:p")<CR>

" filename (foo.txt)
nnoremap <leader>ct :let @+=expand("%:t")<CR>

" directory name (/something/src)
nnoremap <leader>ch :let @+=expand("%:p:h")<CR>

au FileType javascript set shiftwidth=2
au FileType javascript set tabstop=2
