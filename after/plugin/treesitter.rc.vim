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
    enable = false,
    disable = {},
  },
  ensure_installed = {
    "javascript",
    "tsx",
    "toml",
  --  "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "html",
    "ruby"
   -- "scss"
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.used_by = { "javascript", "typescript.tsx" }
-- parser_config.javascript.used_by = { "javascript", "javascriptreact" , "javascript.js", "javascriptreact.js" }
EOF
