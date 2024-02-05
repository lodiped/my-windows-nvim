return {
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local harpoon = require("harpoon")
      ---@diagnostic disable-next-line: missing-parameter
      harpoon:setup()
      local function map(lhs, rhs, opts)
        vim.keymap.set("n", lhs, rhs, opts or {})
      end
      map("<leader>a<leader>", function()
        harpoon:list():append()
      end, {
        desc = "Harpoon current buffer",
      })
      map("<leader>av", function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, {
        desc = "Open Harpoon UI",
      })
      map("<leader>aa", function()
        harpoon:list():select(1)
      end, {
        desc = "Go to 1st Harpoon target",
      })
      map("<leader>as", function()
        harpoon:list():select(2)
      end, {
        desc = "Go to 2nd Harpoon target",
      })
      map("<leader>ad", function()
        harpoon:list():select(3)
      end, {
        desc = "Go to 3rd Harpoon target",
      })
      map("<leader>af", function()
        harpoon:list():select(4)
      end, {
        desc = "Go to 4th Harpoon target",
      })
      map("<leader>ac", function()
        harpoon:list():clear()
      end, {
        desc = "Clear Harpoon list",
      })
      map("<leader>ax", function()
        harpoon:list():remove()
      end, {
        desc = "Remove current buffer from Harpoon list",
      })
    end,
  },
}
