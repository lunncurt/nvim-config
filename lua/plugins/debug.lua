return {
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
      ensure_installed = {
        "codelldb",
        "debugpy",
      },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dapui = require("dapui")
      local dap = require("dap")

      dapui.setup()

      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end,
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require("dap")
      vim.keymap.set("n", "<Leader>bt", dap.toggle_breakpoint, {})
      vim.keymap.set("n", "<Leader>dt", dap.continue, {})
      vim.keymap.set("n", "<Leader>ds", function() dap.terminate() end)
      vim.keymap.set("n", "<Leader>dc", function() dap.continue() end)
      vim.keymap.set("n", "<Leader>so", function() dap.step_over() end)
      vim.keymap.set("n", "<Leader>si", function() dap.step_into() end)
    end,
  },
}
