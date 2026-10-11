return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  -- or if using mini.icons/mini.nvim
  -- dependencies = { "nvim-mini/mini.icons" },
  opts = {},

  keys = {
    -- Desactivamos el atajo por defecto que usa fzf-lua en <leader>/
    { "<leader>/", false },

    -- Asignamos fzf-lua live_grep a un nuevo atajo
    {
      "<leader>fG",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "Fzf Live Grep (Root)",
    },
  },
}
