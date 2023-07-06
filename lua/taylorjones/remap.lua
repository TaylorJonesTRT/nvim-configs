local opts = { buffer = 0 }

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

--nvim-tree
vim.keymap.set("n", "<leader>nt", ":NvimTreeToggle<CR>")

-- Move Commands
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keeps cursor in middle of screen when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Greatest, remap. Allows to paste without having the removed word be in buffer
vim.keymap.set("x", "<leader>p", "\"_dP")

-- Allows to copy to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

-- never press capital Q
vim.keymap.set("n", "Q", "<nop>")

-- tmux stuff
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux new-session<CR>")

vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format()
end)

-- pretty much vs code f2 function to rename
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");

--telescope repo search
vim.keymap.set("n", "<leader>pr", ":Telescope repo list<CR>")

--ToggleTerm
vim.keymap.set("n", "<leader>tth", ":ToggleTerm direction=horizontal<CR>")
vim.keymap.set("t", "<esc>", "<C-\\><C-n>", opts)

-- Toggles between lsp-lines and virtual-text
vim.keymap.set("", "<leader>dt", function()
        local config = vim.diagnostic.config()
        vim.diagnostic.config({
            virtual_text = not config.virtual_text,
            virtual_lines = not config.virtual_lines,
        })
    end, { desc = "Toggle Line Diagnostics" })
