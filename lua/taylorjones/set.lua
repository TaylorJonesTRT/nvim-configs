vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

vim.o.statusline = "%{%v:lua.require'nvim-navic'.get_location()%}"

-- remove virtual_text since I have lsp_lines installed
-- vim.diagnostic.config({
--     float = { border = "rounded" },
-- })

vim.diagnostic.config({
    underline = true,
    signs = true,
    virtual_text = false,
    float = {
        show_header = true,
        source = "always",
        border = "rounded",
        focusable = false,
    },
    update_in_insert = false,
    severity_sort = false,
})
