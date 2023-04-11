if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin(stdpath('data') . '/plugged')

"Plug 'haishanh/night-owl.vim'
Plug 'dracula/vim', {'as':'dracula'}
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
Plug 'neovim/nvim-lspconfig'
"Plug 'takac/vim-hardtime'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'christoomey/vim-tmux-navigator'
"Plug 'vim-airline/vim-airline'
Plug 'w0rp/ale'
Plug 'preservim/nerdtree'
Plug 'glepnir/lspsaga.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} 
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'tpope/vim-fugitive'
Plug 'freitass/todo.txt-vim'

call plug#end()

