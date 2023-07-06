require("transparent").setup({
  groups = { -- table: default groups
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLineNr', 'EndOfBuffer', 'NvimTreeNormal'
  },
  extra_groups = {
      "NormalFloat",
      "NvimTreeNormal",
      "NvimTreeNormalFloat",
      "NvimTreeNormalNC",
      "NvimTreeRootFolder",
  }, -- table: additional groups that should be cleared
  exclude_groups = {}, -- table: groups you don't want to clear
})

vim.g.transparent_groups = vim.list_extend(vim.g.transparent_groups or {}, { "ExtraGroup" })

