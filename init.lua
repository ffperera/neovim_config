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

-- CONTROL+m  siguiente buffer
-- CONTROL+n  buffer anterior
vim.keymap.set({ "i", "x", "n", "s" }, "<C-m>", "<cmd>bnext<cr><esc>", { desc = "Next buffer" })
vim.keymap.set({ "i", "x", "n", "s" }, "<C-n>", "<cmd>bprev<cr><esc>", { desc = "Prev buffer" })

vim.keymap.set({ "i", "n" }, "<A-up>", "<cmd>m .-2<cr>==", { desc = "Move line" })
vim.keymap.set({ "i", "n" }, "<A-down>", "<cmd>m .+1<cr>==", { desc = "Move line" })

vim.keymap.set({ "n" }, "<cr>", "o<esc>", { desc = "Add line in normal mode" })

-- vim.filetype.add({
--   extension = {
--     mdx = "markdown.mdx",
--   },
--   filename = {},
--   pattern = {},
-- })

-- vim.treesitter.language.register("markdown", "mdx")

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

require("dapui").setup()
local dap = require("dap")
local dapui = require("dapui")

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

vim.keymap.set("n", "<leader>di", require("dapui").toggle)
