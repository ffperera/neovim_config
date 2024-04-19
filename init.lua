-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.cmd.colorscheme("catppuccin")

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.smartindent = true

-- CONTROL+S para guardar
vim.keymap.set({ "i", "x", "n", "s" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

vim.filetype.add({
  extension = {
    mdx = "mdx",
  },
})

vim.treesitter.language.register("markdown", "mdx")
vim.opt.spelllang = "es_es"

-- Xdebug
-- nvim-dap + vscode-php-debug
-- vscode-php-debug es un cliente para xdebug escrito en js - corre en node
--
-- local dap = require("dap")
--
-- dap.adapters.php = {
--   type = "executable",
--   command = "node",
--   args = { "/media/felipe/Datos/Proyectos/repos/vscode-php-debug/out/phpDebug.js" },
-- }
--
-- dap.configurations.php = {
--   {
--     type = "php",
--     request = "launch",
--     name = "Listen for Xdebug nvim config",
--     port = 9003,
--   },
-- }
