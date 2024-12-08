return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    },
    config = function()
      require("telescope").setup({
        defaults = {
          layout_config = {
            horizontal = {
              preview_cutoff = 0, -- Ensures the preview is shown for smaller windows
            },
          },
        },
      })

      -- Register keybindings
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Find files" })
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep" })
    end,
  },{
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()    
        require("telescope").setup({
        extensions ={
        ["ui-select"]={
          require("telescope.themes").get_dropdown{}
        }
      }
    })
    require("telescope").load_extension("ui-select")
  end
},
}