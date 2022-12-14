return {
  ["declancm/cinnamon.nvim"] = { disable = true },
  ["famiu/bufdelete.nvim"] = { disable = true },
  ["goolord/alpha-nvim"] = { disable = true },
  ["lukas-reineke/indent-blankline.nvim"] = { disable = true },
  ["max397574/better-escape.nvim"] = { disable = true },
  ["numToStr/Comment.nvim"] = { disable = true },
  ["danymat/neogen"] = {
    module = "neogen",
    cmd = "Neogen",
    config = function()
      require("neogen").setup(require "user.plugins.neogen")
    end,
    requires = "nvim-treesitter/nvim-treesitter",
  },
  ["dhruvasagar/vim-table-mode"] = {
    cmd = "TableModeToggle",
    config = function()
      vim.g.table_mode_corner = "|"
    end,
  },
  ["echasnovski/mini.nvim"] = {
    event = "VimEnter",
    config = function()
      require "user.plugins.mini"()
    end,
  },
  ["ethanholz/nvim-lastplace"] = {
    event = "BufRead",
    config = function()
      require("nvim-lastplace").setup(require "user.plugins.nvim-lastplace")
    end,
  },
  ["folke/zen-mode.nvim"] = {
    cmd = "ZenMode",
    module = "zen-mode",
    config = function()
      require("zen-mode").setup(require "user.plugins.zen-mode")
    end,
  },
  ["hrsh7th/cmp-calc"] = {
    after = "nvim-cmp",
    config = function()
      astronvim.add_user_cmp_source "calc"
    end,
  },
  ["hrsh7th/cmp-emoji"] = {
    after = "nvim-cmp",
    config = function()
      astronvim.add_user_cmp_source "emoji"
    end,
  },
  ["jbyuki/nabla.nvim"] = { module = "nabla" },
  ["jc-doyle/cmp-pandoc-references"] = {
    after = "nvim-cmp",
    config = function()
      astronvim.add_user_cmp_source "pandoc_references"
    end,
  },
  ["kdheepak/cmp-latex-symbols"] = {
    after = "nvim-cmp",
    config = function()
      astronvim.add_user_cmp_source "latex_symbols"
    end,
  },
  ["lukas-reineke/headlines.nvim"] = {
    ft = { "markdown", "rmd" },
    config = function()
      require("headlines").setup(require "user.plugins.headlines")
    end,
  },
  ["mfussenegger/nvim-dap"] = {
    module = "dap",
    config = require "user.plugins.dap",
  },
  ["mtikekar/nvim-send-to-term"] = {
    cmd = "SendHere",
    config = function()
      vim.g.send_disable_mapping = true
    end,
  },
  ["phaazon/hop.nvim"] = {
    cmd = { "HopChar1", "HopChar2", "HopLine", "HopPattern", "HopWord" },
    branch = "v1",
    config = function()
      require("hop").setup()
    end,
  },
  ["rcarriga/nvim-dap-ui"] = {
    after = "nvim-dap",
    config = function()
      local dap, dapui = require "dap", require "dapui"
      dapui.setup(require "user.plugins.dapui")
      -- add listeners to auto open DAP UI
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
  ["nvim-treesitter/nvim-treesitter-textobjects"] = { after = "nvim-treesitter" },
  ["nvim-telescope/telescope-bibtex.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension "bibtex"
    end,
  },
  ["nvim-telescope/telescope-file-browser.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension "file_browser"
    end,
  },
  ["nvim-telescope/telescope-hop.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension "hop"
    end,
  },
  ["nvim-telescope/telescope-media-files.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension "media_files"
    end,
  },
  ["nvim-telescope/telescope-project.nvim"] = {
    after = "telescope.nvim",
    config = function()
      require("telescope").load_extension "project"
    end,
  },
  ["vitalk/vim-simple-todo"] = {
    keys = {
      "<Plug>(simple-todo-above)",
      "<Plug>(simple-todo-below)",
      "<Plug>(simple-todo-mark-as-done)",
      "<Plug>(simple-todo-mark-as-undone)",
      "<Plug>(simple-todo-mark-switch)",
      "<Plug>(simple-todo-new-list-item)",
      "<Plug>(simple-todo-new-list-item-start-of-line)",
    },
    config = function()
      vim.g.simple_todo_map_keys = false
    end,
  },
  ["wakatime/vim-wakatime"] = { event = "BufEnter" },
  ["ziontee113/syntax-tree-surfer"] = { module = "syntax-tree-surfer" },
  ["vimwiki/vimwiki"] = {
    config = function()
      vim.g.vimwiki_list = { { path = "~/vimwiki", template_path = "~/vimwiki/templates/", template_default = "template", syntax = "markdown", template_ext= ".html", path_html = "~/.local/src/wiki2", custom_wiki2html = "vimwiki_markdown", ext = ".md"} }
    end,
  },
  "davidgranstrom/nvim-markdown-preview",
  "ellisonleao/gruvbox.nvim",
  -- ["oberblastmeister/neuron.nvim"] = {
  --   branch = "unstable",
  --       -- these are all the default values
  --   config = function()
  --     require'neuron'.setup {
  --       virtual_titles = true,
  --       mappings = true,
  --       run = nil, -- function to run when in neuron dir
  --       neuron_dir = "~/vimwiki",
  --       leader = "gz",
  --   }
  -- end
  -- },
}
