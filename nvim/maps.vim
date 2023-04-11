"keymaps

noremap <F8> <ESC> :w <CR> :!sh build1.sh %:r && > ~/.out && ./%:r < ~/.inp >> ~/.out 2>> ~/.out<CR>
inoremap <F8> <ESC> :w <CR> :!sh build1.sh %:r && > ~/.out && ./%:r < ~/.inp >> ~/.out 2>> ~/.out<CR>

" copy file text to sys clipboard
noremap <F9> <ESC> <CR> :%y+ <CR>

" indent/unindent with tab/shift-tab
nmap <Tab> >>
imap <S-Tab> <Esc><<i
nmap <S-tab> <<

