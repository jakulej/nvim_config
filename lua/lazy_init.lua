local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct
require("lazy").setup({
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v4.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    "folke/which-key.nvim",
    {'nvim-tree/nvim-web-devicons'},
    { "folke/neoconf.nvim", cmd = "Neoconf" },
    "folke/neodev.nvim",
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 } ,
    {'glepnir/nerdicons.nvim', cmd = 'NerdIcons', config = function() require('nerdicons').setup({}) end},
    {'nvim-lualine/lualine.nvim',dependencies = { 'nvim-tree/nvim-web-devicons' },
        {"nvim-tree/nvim-tree.lua",version = "*",lazy = false,dependencies = {"nvim-tree/nvim-web-devicons",},config = function()require("nvim-tree").setup {}end,}
    },
    {'nvim-telescope/telescope.nvim', tag = '0.1.8', dependencies = { 'nvim-lua/plenary.nvim' }},
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release' }
})

