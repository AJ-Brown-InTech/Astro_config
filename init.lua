return {
    {
      "glacambre/firenvim",
      run = function()
        vim.fn["firenvim#install"](0)
      end,
      config = function()
        vim.g.firenvim_config = {
          globalSettings = {
            alt = "all",
          },
          localSettings = {
            [".git/*"] = {
              cmdline = "tabedit",
            },
          },
        }
      end
    },
    {
      "jdhao/better-escape.vim",
      event = "InsertEnter",
      config = function()
        require("better_escape").setup({
          mapping = {"jk"},
          timeout = 200,
        })
      end
    },
    {
      "famiu/bufdelete.nvim",
      cmd = {
        "Bdelete",
        "Bwipeout",
      },
    },
    {
      "hrsh7th/nvim-cmp",
      requires = {
        "hrsh7th/cmp-buffer",
      },
      config = function()
        require("cmp").setup({
          sources = {
            { name = "buffer" },
          },
        })
      end
    },
    {
        "terrortylor/nvim-comment",
        event = "BufRead",
        config = function()
          require('nvim_comment').setup()
        end
      },
      {
        -- Add the community repository of plugin specifications
        "AstroNvim/astrocommunity",
        -- example of imporing a plugin, comment out to use it or add your own
        -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
      
         { import = "astrocommunity.colorscheme.catppuccin" },
         { import = "astrocommunity.completion.copilot-lua-cmp" },
      },
      {
        {
          "williamboman/mason.nvim",
          cmd = {
            "Mason",
            "MasonInstall",
            "MasonUninstall",
            "MasonUninstallAll",
            "MasonLog",
            "MasonUpdate", -- AstroNvim extension here as well
            "MasonUpdateAll", -- AstroNvim specific
          },
          opts = {
            ui = {
              icons = {
                package_installed = "✓",
                package_uninstalled = "✗",
                package_pending = "⟳",
              },
            },
          },
          config = require "plugins.configs.mason",
        },
      },
        {
          "fatih/vim-go",
          ft = {"go"},
          run = ":GoUpdateBinaries",
          config = function()
            vim.g.go_highlight_functions = 1
            vim.g.go_highlight_methods = 1
            vim.g.go_highlight_structs = 1
            vim.g.go_highlight_types = 1
            vim.g.go_fmt_fail_silently = 1
            vim.g.go_fmt_command = "goimports"
          end,
        },
        {
          "ryanoasis/vim-devicons",
          config = function()
            vim.cmd("let g:WebDevIconsUnicodeDecorateFolderNodes=1")
            vim.cmd("let g:DevIconsEnableFoldersOpenClose=1")
          end,
        },
        {
          "ryanoasis/nerd-fonts",
          config = function()
            vim.cmd("set guifont=Nerd\\ Font\\ Mono")
          end,
        },
        {
            "TabNine/tabnine-vim",
            run = "./install.sh",
            config = function()
              vim.g.tabnine#auto#select = 0
              vim.g.tabnine#config = {
                max_num_results = 6,
                sort = 1,
                priority = {},
              }
            end,
          },
  }