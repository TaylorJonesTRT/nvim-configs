require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = {
      "vimdoc", "javascript", "typescript", "html", "css", "rust", "c", "lua", "vim", "vimdoc", "query", "glimmer"
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

   highlight = {
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },

  context_commentstring = {
      enable = true,
  },

}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.rescript = {
    install_info = {
        url = "nvim-treesitter-rescript",
        files = {"src/parser.c"},
        branch = "main",
        generate_requires_npm = false,
        requires_generate_from_grammar = false,
    },
}

require'treesitter-context'.setup{
    enable = true,
    max_lines = 0,
    min_window_height = 0,
    line_numbers = true,
    multiline_threshold = 20,
    trim_scope = 'outer',
    mode = 'cursor',
    separator = nil,
    zindex = 20,
    on_attach = nil,
}
