require("nvim-treesitter.configs").setup {
  ensure_installed = {"lua", "ruby", "rust", "python"},
  sync_install = true,
  auto_install = false,

  highlight = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },

  indent = {
    enable = true,
    -- treesitter indent returns 0 inside unclosed blocks in C; fall back to cindent
    disable = {"c", "cpp"},
  }
}
