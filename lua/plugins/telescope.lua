return {
	"nvim-telescope/telescope.nvim",

	dependencies = { 
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },

	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")

		telescope.setup({})

		-- See `:help telescope.builtin`
		vim.keymap.set("n", "<Leader>ff", builtin.find_files)
	end,
}
