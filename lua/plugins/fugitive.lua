-- integracion de git

return {
  "tpope/vim-fugitive",
  cmd = { "G", "Git" },
  keys = {
    { "<leader>ga", ":Git fetch --al -p<cr>", desc = "Git fecth" },
    { "<leader>gl", ":Git pull<cr>", desc = "Git pull" },
  },
}
