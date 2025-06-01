return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local todo_comments = require("todo-comments")

    todo_comments.setup({
      keywords = {
        FIX = {
          icon = "",
          color = "error",
          alt = { "FIXME", "BUG", "FIXIT", "ISSUE" },
        },
        TODO = { icon = "", color = "info" },
        HACK = { icon = "", color = "warning", alit = { "DON SKIP" } },
        WARN = { icon = "", color = "warning", alit = { "WARNING", "XXX" } },
        PERF = { icon = "", alit = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
        NOTE = { icon = "", color = "hint", alit = { "INFO", "READ", "COLORS" } },
        TEST = { icon = "", color = "test", alit = { "TESTING", "PASSED", "FAILED" } },
      }
    })

    -- BUG:

    -- keymaps
    vim.keymap.set("n", "]t", function()
      todo_comments.jump_next()
    end, { desc = "Next TODO comment" })

    vim.keymap.set("n", "[t", function()
      todo_comments.jump_prev()
    end, { desc = "Previous TODO comment" })
  end
}
