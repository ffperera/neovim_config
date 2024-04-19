return {
  "mfussenegger/nvim-dap",
  dependencies = { "rcarriga/nvim-dap-ui" },
  config = function()
    local dap = require("dap")
    -- local dapui = require("dapui")
    --
    -- dap.listeners.before.attach.dapui_config = function()
    --   dapui.open()
    -- end
    -- dap.listeners.before.launch.dapui_config = function()
    --   dapui.open()
    -- end
    -- dap.listeners.before.event_terminated.dapui_config = function()
    --   dapui.close()
    -- end
    -- dap.listeners.before.event_exited.dapui_config = function()
    --   dapui.close()
    -- end

    vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<Leader>dc", dap.continue, {})

    dap.adapters.php = {
      type = "executable",
      command = "node",
      args = { "/media/felipe/Datos/Proyectos/repos/vscode-php-debug/out/phpDebug.js" },
    }

    dap.configurations.php = {
      {
        type = "php",
        request = "launch",
        name = "Listen for Xdebug",
        port = 9003,
      },
    }
  end,
}
