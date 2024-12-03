return {
  {
    "scalameta/nvim-metals",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
      "folke/which-key.nvim",
      "hrsh7th/cmp-nvim-lsp",
      "mfussenegger/nvim-dap",
    },
    keys = {
      {
        "<leader>mc",
        function()
          require("telescope").extensions.metals.commands()
        end,
        desc = "Metals Commands",
      },
    },
    init = function()
      local wk = require("which-key")
      wk.add({ "<leader>m", group = "metals" })

      local metals_config = require("metals").bare_config()

      -- metals_config.init_options.statusBarProvider = "off"
      metals_config.settings.enableSemanticHighlighting = false

      -- Example if you are using cmp how to make sure the correct capabilities for snippets are set
      metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Debug settings if you're using nvim-dap
      local dap = require("dap")

      dap.configurations.scala = {
        {
          type = "scala",
          request = "launch",
          name = "RunOrTest",
          metals = {
            runType = "runOrTestFile",
            --args = { "firstArg", "secondArg", "thirdArg" }, -- here just as an example
          },
        },
        {
          type = "scala",
          request = "launch",
          name = "Test Target",
          metals = {
            runType = "testTarget",
          },
        },
      }

      metals_config.on_attach = function(_client, _bufnr)
        require("metals").setup_dap()
      end

      -- Autocmd that will actually be in charging of starting the whole thing
      local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", { clear = true })
      vim.api.nvim_create_autocmd("FileType", {
        -- NOTE: You may or may not want java included here. You will need it if you
        -- want basic Java support but it may also conflict if you are using
        -- something like nvim-jdtls which also works on a java filetype autocmd.
        pattern = { "scala", "sbt", "java" },
        callback = function()
          require("metals").initialize_or_attach(metals_config)
        end,
        group = nvim_metals_group,
      })
    end,
  },
}
