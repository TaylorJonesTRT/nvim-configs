require("catppuccin").setup({
    flavour = "mocha",
    transparent_background = true,
    show_end_of_buffer = false,
    integrations = {
        gitsigns = true,
        treesitter = true,
        notify = true,
        harpoon = true,
        mason = true,
        fidget = true,
        telescope = {
            enabled = true,
        },
    }
})

vim.cmd.colorscheme "catppuccin"
