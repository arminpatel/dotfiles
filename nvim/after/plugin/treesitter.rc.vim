if !exists('g:loaded_nvim_treesitter')
  echom "Not loaded treesitter"
  finish
endif

lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "c",
    "cpp",
    "python",
    "html",
    "css",
    "javascript",
    "typescript",
    "lua",
    "rust",
    "go",
    "json",
  },
  autotag = {
    enable = true,
  }
}

--local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
--parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
EOF
