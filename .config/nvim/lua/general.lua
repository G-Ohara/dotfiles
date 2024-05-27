-- general.lua
-- This file configures general settings for Neovim


-- Save undo history
vim.opt.undofile = true

-- Automatically format on save
vim.api.nvim_create_autocmd(
  "BufWritePre",
  {
    group = vim.api.nvim_create_augroup("lsp_format", {}),
    pattern = "*",
    callback = function()
      vim.lsp.buf.format()
    end
  }
)
