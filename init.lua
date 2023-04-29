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
              "AstroNvim/astrocommunity",
              -- example of importing a plugin, comment out to use it or add your own
              -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
              {
                import = "astrocommunity.colorscheme.catppuccin",
              },
              {
                import = "astrocommunity.completion.copilot-lua-cmp",
              },
            },
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
                vim.g.tabnine_auto_select = 0
                vim.g.tabnine_config = {
                  max_num_results = 6,
                  sort = 1,
                  priority = {},
                }
              end,
            },
            {
              "neoclide/coc.nvim",
              branch = "release",
              config = function()
              vim.g.coc_global_extensions = {
              "coc-go",
              "coc-json",
              "coc-tsserver",
              "coc-eslint",
              "coc-prettier"
              }
              end,
              },
              
              {
              "tjdevries/astronauta.nvim",
              event = "BufRead",
              config = function()
              require('astronauta.keymap').map({
              {'n', '<leader>gf', '<cmd>lua require("go-to-file").goto_file_popup()<CR>'},
              {'n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<CR>'},
              {'n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<CR>'},
              {'n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<CR>'},
              {'n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<CR>'},
              {'n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>'},
              {'n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>'},
              {'n', '<leader>h', '<cmd>lua vim.lsp.buf.hover()<CR>'},
              {'n', '<leader>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>'},
              {'n', '<leader><leader>', '<cmd>lua vim.lsp.buf.formatting()<CR>'},
              }, {silent = true})
              end
              },
              
              {
              "jose-elias-alvarez/null-ls.nvim",
              requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
              config = function()
              require("null-ls").config({
              sources = {
              require("null-ls").builtins.formatting.prettier,
              require("null-ls").builtins.formatting.stylua,
              require("null-ls").builtins.formatting.goimports,
              require("null-ls").builtins.formatting.eslint_d,
              require("null-ls").builtins.formatting.tsserver,
              },
              })
              require("lspconfig")["null-ls"].setup({})
              end,
              },
              {
                'navarasu/Heirline.nvim',
                config = function()
                  require('heirline').setup{}
                  vim.api.nvim_command('set statusline=%!heirline#statusline()')
                  vim.api.nvim_command('set winbar=on')
                  vim.api.nvim_command('set winhighlight=%!heirline#winbar_highlight()')
                  vim.api.nvim_command('set showtabline=2')
                  vim.api.nvim_command('set tabline=%!heirline#tabline()')
                  vim.cmd('highlight HeirlineActive guibg=gray')
                  vim.cmd('highlight HeirlineInactive guibg=black')
                  vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
                  vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
                  vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
                  vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })
                end
              },   
              {
              'lewis6991/gitsigns.nvim',
              require('gitsigns').setup()      
              },
}