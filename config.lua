-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny

-- Color Scheme
lvim.colorscheme = "catppuccin-mocha"

-- Key Mappings
-- Default Removals - find the key for these mappings using `:nmap`
lvim.keys.normal_mode["<Space>c"] = false
lvim.keys.normal_mode["<Space>f"] = false

-- 'jk' to exit insert mode and here
vim.keymap.set('i', 'jk', '<Esc>')

-- switch between buffers 
vim.keymap.set('n', 'L', ':bnext <CR>')
vim.keymap.set('n', 'H', ':bprevious <CR>')

-- close buffer
vim.keymap.set('n', '<Space>bd', ':BufferKill <CR>')

-- Go to next error
vim.keymap.set('n', '<Space>ge', function ()
  vim.diagnostic.goto_next()
end)

-- Search for files
vim.keymap.set('n', '<Space>ff', ':Telescope find_files <CR>')
-- Search for text across files  
vim.keymap.set('n', '<Space>ft', ':Telescope live_grep <CR>')

lvim.builtin.nvimtree.setup.view.width = 50
vim.opt.linebreak = true
vim.opt.wrap = true

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
