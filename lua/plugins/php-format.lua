return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters = {
        ["php-cs-fixer"] = {
          command = "php-cs-fixer",
          -- Añade aquí tus argumentos personalizados
          args = { "fix", "$FILENAME", "--rules=@PSR12" },
          -- Si quieres que busque automáticamente tu archivo de reglas .php-cs-fixer.php
          -- puedes dejar los argumentos por defecto o personalizarlos así:
          -- args = { "fix", "$FILENAME", "--config=.php-cs-fixer.dist.php", "--allow-risky=yes" },
          stdin = false,
        },
      },
      formatters_by_ft = {
        php = { "php-cs-fixer" },
      },

      -- format_on_save = {
      --   timeout_ms = 500,
      --   lsp_fallback = true,
      -- },
    },
  },
}
