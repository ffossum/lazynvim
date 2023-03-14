return {
  "scalameta/nvim-metals",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    {
      "<leader>mc",
      function()
        require("telescope").extension.metals.commands()
      end,
      desc = "Metals Commands",
    },
  },
  config = function()
    local metals_config = require("metals").bare_config()

    -- Example if you are using cmp how to make sure the correct capabilities for snippets are set
    metals_config.capabilities = require("cmp_nvim_lsp").default_capabilities()

    local nvim_metals_group = vim.api.nvim_create_augroup("nvim-metals", {
      clear = true,
    })
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
}
