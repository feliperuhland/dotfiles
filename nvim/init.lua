-- bootstrap lazy.nvim, LazyVim and your plugins
vim.g.mapleader = "\\"
vim.keymap.set("n", "<F2>", ":Neotree toggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<F3>", function()
  require("snacks").picker.files()
end, { desc = "Snacks Files" })
vim.keymap.set("n", "<F4>", function()
  require("snacks").picker.grep()
end, { desc = "Snacks Grep" })
require("config.lazy")
