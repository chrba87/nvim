return {
  {
    "nvim-neorg/neorg",
    dependencies = { "luarocks.nvim" },
    version = "8.x.x",
    config = function()
      require("neorg").setup {
        load = {
          ["core.keybinds"] = {
            config = {
              hook = function(keybinds)
                -- Sometimes you may simply want to rebind the Neorg action something is bound to
                -- versus remapping the entire keybind. This remap is essentially the same as if you
                -- did `keybinds.remap("norg", "n", "<C-Space>, "<cmd>Neorg keybind norg core.qol.todo_items.todo.task_done<CR>")
                keybinds.remap_event("norg", "n", "<leader>mc", "core.qol.todo_items.todo.task_done")
                keybinds.remap_event("norg", "n", "<leader>mu", "core.qol.todo_items.todo.task_undone")
                keybinds.remap_event("norg", "n", "<leader>mm", "core.qol.todo_items.todo.task_cycle")

              end,
            }
          },
          ["core.defaults"] = {},
          ["core.concealer"] = {},
          ["core.summary"] = {
            config = {
              strategy = "by_path",
            }
          },
          ["core.dirman"] = {
            config = {
              workspaces = {
                notes = "~/notes",
              },
              default_workspace = "notes",
            },
          },
        },
      }
      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
    end,
  }
}
