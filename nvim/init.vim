set tabstop=4
autocmd FileType html set tabstop=2
syntax on
filetype on
set number
set nocompatible
set shiftwidth=4
set relativenumber
set expandtab
set autoindent
set smartindent
set ruler
set showcmd
set incsearch
set hlsearch
set ignorecase
set noswapfile
set smarttab
set autoread
filetype indent on
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2 expandtab
inoremap jk <Esc>
tnoremap jk <Esc>
inoremap kj <Esc>
tnoremap kj <Esc>
""set termguicolors

""Prettier config
"let g:prettier#autoformat = 1
"let g:prettier#autoformat_require_pragma = 0

" Gruvbox config
set bg=dark
runtime ./plug.vim
runtime ./maps.vim
"keymaps
" cpp
autocmd FileType cpp noremap <F8> <ESC> :w <CR> :!sh build1.sh %:r && > ~/.out && ./%:r < ~/.inp >> ~/.out 2>> ~/.out<CR>
autocmd FileType cpp inoremap <F8> <ESC> :w <CR> :!sh build1.sh %:r && > ~/.out && ./%:r < ~/.inp >> ~/.out 2>> ~/.out<CR>

" python
autocmd FileType python noremap <F8> <ESC> :w <CR> :!python3 "%" < ~/.inp > ~/.out <CR>
autocmd FileType python inoremap <F8> <ESC> :w <CR> :!python3 "%" < ~/.inp > ~/.out <CR>

"
"" copy file text to sys clipboard
noremap <F9> <ESC> <CR> :%y+ <CR>

"indent/unindent with tab/shift-tab
nmap <Tab> >>
imap <S-Tab> <Esc><<i
nmap <S-tab> <<

" save undo-trees in files
set undofile
set undodir=$HOME/.config/nvim/undo
" number of undo saved
set undolevels=10000 
set undoreload=10000

"colorscheme gruvbox 

let g:completion_enable_snippet = 'UltiSnips'
let g:hardtime_default_on = 1
let g:hardtime_showmsg = 1
let g:hardtime_allow_different_key = 1

set nocompatible              " be iMproved, required
filetype off                  " required

""" imports
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

filetype plugin indent on    " required

" mouse
set mouse=a
let g:is_mouse_enabled = 1
noremap <silent> <Leader>m :call ToggleMouse()<CR>
function ToggleMouse()
    if g:is_mouse_enabled == 1
        echo "Mouse OFF"
        set mouse=
        let g:is_mouse_enabled = 0
    else
        echo "Mouse ON"
        set mouse=a
        let g:is_mouse_enabled = 1
    endif
endfunction

" wrap toggle
setlocal wrap
noremap <silent> <Leader>w :call ToggleWrap()<CR>
function ToggleWrap()
    if &wrap
        echo "Wrap OFF"
        setlocal nowrap
        set virtualedit=all
        silent! nunmap <buffer> <Up>
        silent! nunmap <buffer> <Down>
        silent! nunmap <buffer> <Home>
        silent! nunmap <buffer> <End>
        silent! iunmap <buffer> <Up>
        silent! iunmap <buffer> <Down>
        silent! iunmap <buffer> <Home>
        silent! iunmap <buffer> <End>
    else
        echo "Wrap ON"
        setlocal wrap linebreak nolist
        set virtualedit=
        setlocal display+=lastline
        noremap  <buffer> <silent> <Up>   gk
        noremap  <buffer> <silent> <Down> gj
        noremap  <buffer> <silent> <Home> g<Home>
        noremap  <buffer> <silent> <End>  g<End>
        inoremap <buffer> <silent> <Up>   <C-o>gk
        inoremap <buffer> <silent> <Down> <C-o>gj
        inoremap <buffer> <silent> <Home> <C-o>g<Home>
        inoremap <buffer> <silent> <End>  <C-o>g<End>
    endif
endfunction

""""" install

" install with vim-plug
" or with NeoBundle
" NeoBundle 'haishanh/night-owl.vim'
" or with Vundle
" Plugin 'haishanh/night-owl.vim'

""""" enable 24bit true color

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

""""" enable the theme

syntax enable
colorscheme dracula 

let g:airline_theme='dracula'

" ALE config
" Disable ALE for cpp files
let g:ale_pattern_options = {
\       '\.cpp$' : {
\       'ale_linters': [''],
\       'ale_fixers': ['']
\       }
\}
let g:ale_linters_ignore = {    
\   'python': ['mypy'],
\}
