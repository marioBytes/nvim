return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      explorer = {
        enabled = true,
        layout = {
          cycle = false,
        },
      },
      quickfile = {
        enabled = true,
        exclude = { "latex" },
      },
      picker = {
        enabled = true,
        matchers = {
          frecency = true,
          cwd_bonus = true,
        },
        formatters = {
          file = {
            filename_first = false,
            filename_only = false,
            icon_width = 2,
          },
        },
        layout = {
          present = "telescope",
          cycle = false,
        },
        layouts = {
          select = {
            preview = false,
            layout = {
              backdrop = false,
              width = 0.6,
              min_width = 80,
              height = 0.4,
              min_height = 10,
              box = "vertical",
              border = "rounded",
              title = "{title}",
              title_pos = "center",
              { win = "input", height = 1, border = "bottom" },
              { win = "list", border = "none" },
              { win = "preview", title = "{preview}", width = 0.6, height = 0.4, border = "top" },
            },
            telescope = {
              reverse = false,
              layout = {
                box = "horizontal",
                backdrop = false,
                width = 0.8,
                height = 0.9,
                border = "none",
                {
                  box = "vertical",
                    { win = "list", title = " Results", title_pos = "center", border = "rounded" },
                    { win = "input", height = 1, border = "rounded", title = "{title} {live} {flags}", title_pos = "center" },
                },
                {
                  win = "preview",
                  title = "{preview:Preview}",
                  width = 0.50,
                  border = "rounded",
                  title_pos = "center",
                },
              },
            },
            ivy = {
              layout = {
                box = "vertical",
                backdrop = false,
                width = 0,
                height = 0.4,
                position = "bottom",
                border = "top",
                title = " {title} {live} {flags}",
                title_pos = "left",
                { win = "input", height = 1, border = "bottom" },
                {
                  box = "horizontal",
                  { win = "list", border = "none" },
                  { win = "preview", title = "{preview}", width = 0.5, border = "left" },
                },
              },
            },
          },
        },
      },
      dashboard = {
        enabled = true,
        sections = {
          { section = "header" },
          { section = "keys", gap = 1, padding = 1 },
          { section = "startup" },
          {
            section = "terminal",
            cmd = "ascii-image-converter /home/mario/Pictures/kirby.jpg -C -c",
            random = 15,
            pane = 2,
            indent = 15,
            height = 20,
          },
        },
      },
    },
    keys = {
        -- Snacks Picker
        { "<leader>rN", function() require("snacks").rename.rename_file() end, desc = "Fast Rename Current File" },
        { "<leader>es", function() require("snacks").explorer() end, desc = "Open Snacks Explorer" },
        { "<leader>dB", function() require("snacks").bufdelete() end, desc = "Delete or Close Buffer  (Confirm)" },
        { "<leader>pf", function() require("snacks").picker.files() end, desc = "Find Files (Snacks Picker)" },
        { "<leader>pc", function() require("snacks").picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
        { "<leader>pk", function() require("snacks").picker.keymaps({ layout = "ivy" }) end, desc = "Search Keymaps (Snacks Picker)" },

        -- Other Utils
        { "<leader>th", function() require("snacks").picker.colorschemes({ layout = "ivy" }) end, desc = "Pick Color Schemes"},
        { "<leader>vh", function() require("snacks").picker.help() end, desc = "Help Pages" },
    },
  },
  -- TODO Comments
  {
    "folke/todo-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    keys = {
      { "<leader>pt", function() require("snacks").picker.todo_comments() end, desc = "TODO" },
      { "<leader>pT", function() require("snacks").picker.todo_comments({ keyword = { "TODO", "FIX", "FIXME" } }) end, desc = "TODO/FIX/FIXME" },
    },
  },
}
