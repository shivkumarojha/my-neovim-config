return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    picker = {
      enabled = true,
      exclude = { -- add folder names here to exclude
        ".git",
        "node_modules",
      },
      sources = {
        explorer = {
          auto_close = true,
          hidden = true,
          layout = {
            finder = "explorer",
            layout = {
              preset = "sidebar",
              preview = false,
              position = "right",
              width = 25,
            },
            cycle = false,
          },
        },
      },
      win = {
        input = {
          keys = {
            ["<a-h>"] = false, -- unbind <a-h>
          },
        },
        list = {
          keys = {
            ["<a-h>"] = false, -- unbind <a-h> here too
          },
        },
      },
    },
  },
  keys = {
    {
      "<leader>e",
      function()
        Snacks.explorer.open()
      end,
      desc = "Open Snacks Picker",
    },
  },
}
