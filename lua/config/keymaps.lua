-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<CapsLock>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("i", "<CapsLock>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("v", "<CapsLock>", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("n", "<Leader>o", "m`o<Esc>``", { desc = "Insert line below" })
vim.keymap.set("n", "<Leader>O", "m`O<Esc>``", { desc = "Insert line above" })
vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Show diagnostics under cursor" })

-- autoimport with leader ii ---- Found this in normal kemaps leader + cM
-- vim.keymap.set("n", "<leader>ii", function()
--   vim.lsp.buf.code_action({
--     context = { only = { "quickfix", "source.addMissingImports.ts" }, diagnostics = {} },
--   })
-- end, { desc = "Import missing symbols" })

vim.keymap.set("n", "<C->", function()
  require("toggleterm").toggle()
end, { desc = "Toggle terminal" })

vim.keymap.set("n", "<leader>is", function()
  vim.cmd("write")
  vim.notify("Saved", vim.log.levels.INFO)
end, { desc = "Manual Save" })


-- Visual Mode: move selected lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move down", silent = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move up", silent = true })

-- Normal Mode: move current line
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down", silent = true })
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up", silent = true })
