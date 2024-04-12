-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Color Scheme
lvim.colorscheme = "catppuccin-mocha"

-- Key Mappings
-- 'jk' to exit insert mode and here
vim.keymap.set('i', 'jk', '<Esc>')

-- switch between buffers 
vim.keymap.set('n', 'L', ':bnext <CR>')
vim.keymap.set('n', 'H', ':bprevious <CR>')

-- close buffer
vim.keymap.set('n', '<leader> bd', ':BufferKill <CR>')

-- Find the key for these mappings using `:nmap`
lvim.keys.normal_mode["<Space>c"] = false

-- For Apple terminal
vim.opt.termguicolors = false

lvim.plugins = {
  -- colorschemes 
  {"tanvirtin/monokai.nvim"},
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  {"catppuccin/nvim"},
  {"ChristianChiarulli/nvcode-color-schemes.vim"},
  -- colorizer
  {"NvChad/nvim-colorizer.lua"},
}

require 'colorizer'.setup()
