return {
  "mfussenegger/nvim-dap",
  config = function()
    local dap = require("dap")

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
        name = "Listen for Xdebug from nvim-dap config",
        port = 9003,
        serverReadyAction = {
          pattern = "Development Server \\(http://localhost:([0-9]+)\\) started",
          uriFormat = "http://localhost:%s",
          action = "openExternally",
        },
      },
    }
  end,
}
