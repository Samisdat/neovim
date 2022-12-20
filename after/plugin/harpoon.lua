-- import lualine plugin safely
local status, mark = pcall(require, "harpoon.mark")
if not status then
  return
end

local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file, { desc = 'Harpoon [a]dd file' })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = 'Harpoon [e]xplore files' })

vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end, { desc = 'Harpoon open file 1' })
vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end, { desc = 'Harpoon open file 2' })
vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end, { desc = 'Harpoon open file 3' })
vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end, { desc = 'Harpoon open file 4' })