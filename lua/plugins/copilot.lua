return {
  --[[
  {
    "github/copilot.vim",
  },
  {
    "hrsh7th/nvim-cmp",
    opts = {
      experimental = {
        ghost_text = false,
      },
    },
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      "github/copilot.vim",
      "nvim-lua/plenary.nvim", -- for curl, log wrapper
      "nvim-telescope/telescope.nvim",
    },
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
      window = {
        layout = "float",
        -- relative = "cursor",
        width = 0.4,
        height = 0.4,
        row = 5,
      },
    },
    keys = {
      {
        "<leader>coc",
        ":CopilotChat<CR>",
        desc = "CopilotChat - Open chat",
      },
      {
        "<leader>coh",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.telescope").pick(actions.help_actions())
        end,
        desc = "CopilotChat - Help actions",
      },
      {
        "<leader>cop",
        function()
          local actions = require("CopilotChat.actions")
          require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
        end,
        desc = "CopilotChat - Prompt actions",
      },
    },
    -- See Commands section for default commands if you want to lazy load on them
  },
  --]]
}
