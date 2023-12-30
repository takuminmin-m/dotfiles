return {
  "folke/neodev.nvim",
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },

  {
    "nvim-treesitter/nvim-treesitter",
    config = function() require "plugins.nvim-treesitter" end,
  },

  {
    "rmehri01/onenord.nvim",
    config = function() require "plugins.onenord" end,
  },

  {
    "kevinhwang91/nvim-hlslens",
    config = function() require "plugins.nvim-hlslens" end,
  },

  {
    "nvim-lualine/lualine.nvim",
    config = function() require "plugins.lualine" end,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "rmehri01/onenord.nvim",
      "lewis6991/gitsigns.nvim",
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function() require "plugins.nvim-lspconfig" end,
  },

  {
    "williamboman/mason.nvim",
    config = function() require "plugins.mason" end,
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
    },
  },

   -- file manager
  {
    "nvim-tree/nvim-tree.lua",
    config = function() require "plugins.nvim-tree" end,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
      "nvim-telescope/telescope.nvim",
    }
  },

  {
    "SmiteshP/nvim-navic",
    config = function() require "plugins.nvim-navic" end,
    dependencies = {
      "neovim/nvim-lspconfig",
    }
  },
  {
    "petertriho/nvim-scrollbar",
    config = function() require "plugins.nvim-scrollbar" end,
    dependencies = {
      "kevinhwang91/nvim-hlslens",
      "lewis6991/gitsigns.nvim",
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function() require "plugins.gitsigns" end,
  },

  {
    "nvim-telescope/telescope.nvim",
    config = function() require "plugins.telescope" end,
    dependencies = {
      {
        "prochri/telescope-all-recent.nvim",
        config = function() require("telescope-all-recent").setup {} end,
        after = "telescope.nvim",
        dependencies = "kkharji/sqlite.lua",
      },
      "nvim-tree/nvim-web-devicons",
      "nvim-lua/plenary.nvim",
    },
  },
  {
    "SmiteshP/nvim-navbuddy",
    config = function() require "plugins.nvim-navbuddy" end,
    dependencies = {
      "neovim/nvim-lspconfig",
      "SmiteshP/nvim-navic",
      "MunifTanjim/nui.nvim",
      "numToStr/Comment.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
  {
    "hrsh7th/nvim-cmp",
    config = function() require "plugins.nvim-cmp" end,
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-path",
      "onsails/lspkind-nvim",
      {
        "L3MON4D3/LuaSnip",
        run = "make install_jsregexp",
        config = function() require "plugins.luasnip" end,
        dependencies = {
          "saadparwaizl/cmp_luasnip",
          "rafamadriz/friendly-snippets",
        },
      },
    },
  },
  {
    "numToStr/Comment.nvim",
    config = function() require "plugins.Comment" end,
    lazy = false,
  },
  {
    "j-hui/fidget.nvim",
    tag = "legacy",
    config = function() require "plugins.fidget" end,
    dependencies = "neovim/nvim-lspconfig",
  },
  {
    "folke/trouble.nvim",
    config = function() require "plugins.troubles" end,
    dependencies = "nvim-tree/nvim-web-devicons",
  },
  -- {
    -- "lukas-reineke/indent-blankline.nvim",
    -- main = "ibl",
    -- config = function() require "plugins.indent-blankline" end,
  -- },
  {
    "rcarriga/nvim-notify",
    config = function() require "plugins.nvim-notify" end,
  },
  {
    "cohama/lexima.vim",
  },
  {
    "wakatime/vim-wakatime",
  },
  {
    "shellRaining/hlchunk.nvim",
    event = { "UIEnter" },
    config = function() require "plugins.hlchunk" end,
  },
}
