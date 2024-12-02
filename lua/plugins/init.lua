return {
  {
    "zeinhajjali/zedrun.nvim",
    lazy = false,
    config = function()
      require("zedrun").setup {
        commands = {
          python = "python3 {file}",
        },
      }
    end,
    -- cmd = "ZedRun",
  },
  { "nvim-telescope/telescope.nvim", lazy = false },

  {
    "stevearc/conform.nvim",
    -- lazy = false,
    -- event = "VeryLazy",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- {
  --   "nvimtools/none-ls.nvim",
  --   event = "VeryLazy",
  --   dependencies = {
  --     "nvimtools/none-ls-extras.nvim",
  --   },
  --   opts = function()
  --     return require "configs.null-ls"
  --   end,
  -- },
  --
  {
    "williamboman/mason.nvim",
    lazy = false,
  },

  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    opts = function()
      local opts = require "nvchad.configs.nvimtree"
      opts.view.side = "right"
      opts.git = {
        ignore = false,
      }
      return opts
    end,
  },

  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },

  {
    "mfussenegger/nvim-dap",
    config = function()
      require("utils").load_mappings "nvim_dap"
    end,
    -- lazy = false,
    -- config = function()
    -- require("dap-vscode-js").setup {
    --   adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
    --   debugger_cmd = {
    --     "node " .. vim.fn.stdpath "data" .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
    --   },
    -- }
    -- local dap = require "dap"
    -- for _, language in ipairs { "typescript", "javascript" } do
    --   dap.configurations[language] = {
    --     {
    --       name = "Launch",
    --       type = "pwa-node",
    --       request = "launch",
    --       program = "${file}",
    --       rootPath = "${workspaceFolder}",
    --       cwd = "${workspaceFolder}",
    -- sourceMaps = true,
    -- skipFiles = { "<node_internals>/" },
    -- protocol = "inspector",
    -- console = "integratedTerminal",
    -- },
    -- {
    --   name = "Attach to node process",
    --   type = "pwa-node",
    --   request = "attach",
    --   rootPath = "${workspaceFolder}",
    --   processId = require("dap.utils").pick_process,
    -- },
    -- {
    --   name = "Debug Main Process (Electron)",
    --   type = "pwa-node",
    --   request = "launch",
    --   program = "${workspaceFolder}/node_modules/.bin/electron",
    --   args = { "${workspaceFolder}/dist/index.js" },
    --   outFiles = { "${workspaceFolder}/dist/*.js" },
    --   resolveSourceMapLocations = {
    --     "${workspaceFolder}/dist//.js",
    --     "${workspaceFolder}/dist/.js",
    --   },
    --   rootPath = "${workspaceFolder}",
    --   cwd = "${workspaceFolder}",
    --   sourceMaps = true,
    --   skipFiles = { "<node_internals>/" },
    --   protocol = "inspector",
    --   console = "integratedTerminal",
    -- },
    -- {
    --   name = "Compile & Debug Main Process (Electron)",
    --   type = custom_adapter,
    --   request = "launch",
    --   preLaunchTask = "npm run build-ts",
    --   program = "${workspaceFolder}/node_modules/.bin/electron",
    --   args = { "${workspaceFolder}/dist/index.js" },
    --   outFiles = { "${workspaceFolder}/dist/*.js" },
    --   resolveSourceMapLocations = {
    --     "${workspaceFolder}/dist//.js",
    --     "${workspaceFolder}/dist/.js",
    --   },
    --   rootPath = "${workspaceFolder}",
    --   cwd = "${workspaceFolder}",
    --   sourceMaps = true,
    --   skipFiles = { "<node_internals>/**" },
    --   protocol = "inspector",
    --   console = "integratedTerminal",
    -- },
    -- }
    -- end
    -- require "configs.dap"
    -- end,
  },

  -- {
  --   "mxsdev/nvim-dap-vscode-js",
  --   dependencies = { "mfussenegger/nvim-dap" },
  -- config = function()
  --   require("dap-vscode-js").setup {
  --     adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
  --     debugger_path = vim.fn.stdpath "data" .. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js",
  --   }
  --   local dap = require "dap"
  --   for _, language in ipairs { "typescript", "javascript" } do
  --     dap.configurations[language] = {
  --       {
  --         name = "Launch",
  --         type = "pwa-node",
  --         request = "launch",
  --         program = "${file}",
  --         rootPath = "${workspaceFolder}",
  --         cwd = "${workspaceFolder}",
  --         sourceMaps = true,
  --         skipFiles = { "<node_internals>/" },
  --         protocol = "inspector",
  --         console = "integratedTerminal",
  --       },
  --       {
  --         name = "Attach to node process",
  --         type = "pwa-node",
  --         request = "attach",
  --         rootPath = "${workspaceFolder}",
  --         processId = require("dap.utils").pick_process,
  --       },
  --       {
  --         name = "Debug Main Process (Electron)",
  --         type = "pwa-node",
  --         request = "launch",
  --         program = "${workspaceFolder}/node_modules/.bin/electron",
  --         args = { "${workspaceFolder}/dist/index.js" },
  --         outFiles = { "${workspaceFolder}/dist/*.js" },
  --         resolveSourceMapLocations = {
  --           "${workspaceFolder}/dist//.js",
  --           "${workspaceFolder}/dist/.js",
  --         },
  --         rootPath = "${workspaceFolder}",
  --         cwd = "${workspaceFolder}",
  --         sourceMaps = true,
  --         skipFiles = { "<node_internals>/" },
  --         protocol = "inspector",
  --         console = "integratedTerminal",
  --       },
  --       -- {
  --       --   name = "Compile & Debug Main Process (Electron)",
  --       --   type = custom_adapter,
  --       --   request = "launch",
  --       --   preLaunchTask = "npm run build-ts",
  --       --   program = "${workspaceFolder}/node_modules/.bin/electron",
  --       --   args = { "${workspaceFolder}/dist/index.js" },
  --       --   outFiles = { "${workspaceFolder}/dist/*.js" },
  --       --   resolveSourceMapLocations = {
  --       --     "${workspaceFolder}/dist//.js",
  --       --     "${workspaceFolder}/dist/.js",
  --       --   },
  --       --   rootPath = "${workspaceFolder}",
  --       --   cwd = "${workspaceFolder}",
  --       --   sourceMaps = true,
  --       --   skipFiles = { "<node_internals>/**" },
  --       --   protocol = "inspector",
  --       --   console = "integratedTerminal",
  --       -- },
  --     }
  --   end
  -- end,
  -- },

  {
    "rcarriga/nvim-dap-ui",
    -- lazy = false,
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end,
  },

  {
    "mfussenegger/nvim-dap-python",
    -- lazy = false,
    ft = { "python" },
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      local path = vim.fn.stdpath "data" .. "/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("utils").load_mappings "dap_python"
    end,
  },

  {
    "leoluz/nvim-dap-go",
    ft = { "go" },
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    config = function(_, opts)
      require("dap-go").setup(opts)
      require("utils").load_mappings "dap_go"
    end,
  },

  {
    "olexsmir/gopher.nvim",
    ft = "go",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function(_, opts)
      require("gopher").setup(opts)
    end,
    build = function()
      require("gopher").install_deps()
    end,
  },

  {
    "linux-cultist/venv-selector.nvim",
    ft = { "python" },
    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      "mfussenegger/nvim-dap-python", --optional
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },
    },
    -- lazy = false,
    branch = "regexp", -- This is the regexp branch, use this for the new version
    config = function()
      local opts = require "configs.venv-selector-config"
      require("venv-selector").setup {
        changed_venv_hooks = { opts.ruff_hook, opts.nullLs_hook },
      }
      require("utils").load_mappings "venv_selector"
    end,
  },

  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact",
      "html",
      "markdown",
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  {
    "lervag/vimtex",
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "skim"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "python",
        "bibtex",
        "latex",
        "go",
        "rust",
        "toml",
      },
    },
  },

  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end,
  },

  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended
    lazy = false, -- This plugin is already lazy
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      local rust_config = require "configs.rust-tools"
      vim.g.rustaceanvim = rust_config
    end,
  },
  {
    "saecki/crates.nvim",
    tag = "stable",
    event = { "BufRead Cargo.toml" },
    config = function()
      require("crates").setup()
      -- require("crates").setup {
      --   lsp = {
      --     enabled = true,
      --     on_attach = require("nvchad.configs.lspconfig").on_attach,
      --     actions = true,
      --     completion = true,
      --     hover = true,
      --   },
      -- }
    end,
  },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   opts = function()
  --     local M = require "nvchad.configs.cmp"
  --     table.insert(M.sources, { name = "crates" })
  --     return M
  --   end,
  -- },
  {
    "amitds1997/remote-nvim.nvim",
    event = "VeryLazy",
    version = "*", -- Pin to GitHub releases with '*', using 0.3.9 for compat with older linux and scp protocol
    dependencies = {
      "nvim-lua/plenary.nvim", -- For standard functions
      "MunifTanjim/nui.nvim", -- To build the plugin UI
      "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
    },
    config = function()
      require("remote-nvim").setup {
        remote = {
          copy_dirs = {
            config = {
              compression = {
                enabled = true,
                additional_opts = { "--exclude-vcs" },
              },
            },
            data = {
              compression = {
                enabled = true,
                additional_opts = { "--exclude-vcs" },
              },
            },
            cache = {
              compression = {
                enabled = true,
                additional_opts = { "--exclude-vcs" },
              },
            },
            state = {
              compression = {
                enabled = true,
                additional_opts = { "--exclude-vcs" },
              },
            },
          },
        },
      }
    end,
  },

  {
    "folke/todo-comments.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      -- signs = false,
    },
  },
  { "wakatime/vim-wakatime", lazy = false },
}
