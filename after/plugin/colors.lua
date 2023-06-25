function ColorMyPencils()
    color = color or "Tokyonight"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.cmd[[hi NvimTreeNormal guibg=NONE ctermbg=NONE]]
end

ColorMyPencils()
