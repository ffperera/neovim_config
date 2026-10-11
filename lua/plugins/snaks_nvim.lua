return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          -- Sobrescribimos los selectores de snacks para cambiar la tecla de grep por root
          -- o anulamos directamente el mapeo global de la barra /
        },
      },
    },
    keys = {
      -- 1. Desactivamos el atajo por defecto de snacks en <leader>/
      { "<leader>/", false },

      -- 2. (Opcional) Reasignamos la función de grep de snacks a <leader>f/
      {
        "<leader>f/",
        function()
          Snacks.picker.grep()
        end,
        desc = "Grep (Root Dir)",
      },
    },
  },
}
